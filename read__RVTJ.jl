if abspath(PROGRAM_FILE) == @__FILE__
    using Pkg
    Pkg.add("DataFrames")
end

using DataFrames
function read__rvtj(filename::String)::DataFrame
    lines = readlines(filename)

    # Step 1: Extract ND (number of depth points)
    nd_line = findfirst(contains("ND:"), lines)
    ND = parse(Int, split(lines[nd_line])[end])

    # Step 2: Extract blocks (assumes fixed order)
    function extract_block(start_label::String, lines::Vector{String}, ND::Int)
        start_idx = findfirst(contains(start_label), lines)
        if isnothing(start_idx)
            error("Label $start_label not found")
        end
        # Extract the next ceil(ND/8) lines (8 values per line)
        block_lines = lines[start_idx+1 : start_idx + ceil(Int, ND/8)]
        values = Float64[]
        for line in block_lines
            append!(values, parse.(Float64, split(line)))
        end
        return values[1:ND]
    end

    radius = extract_block("Radius", lines, ND)
    velocity = extract_block("Velocity", lines, ND)
    dlnV_dlnr = extract_block("dlnV/dlnr-1", lines, ND)
    electron_density = extract_block("Electron density", lines, ND)
    temperature = extract_block("Temperature", lines, ND)
    grey_temperature = extract_block("Grey temperature", lines, ND)
    heating = extract_block("Heating", lines, ND)
    rosseland = extract_block("Rosseland", lines, ND)
    flux_mean = extract_block("Flux Mean", lines, ND)
    plank_mean  = extract_block("Planck Mean", lines, ND)
    atom_density = extract_block("Atom", lines, ND)
    ion_density = extract_block("Ion", lines, ND)
    mass_density = extract_block("Mass", lines, ND)
    clumping = extract_block("Clumping", lines, ND)
    h_density = extract_block("Hydrogen Density", lines, ND)
    he_density = extract_block("Helium", lines, ND)

    return DataFrame(
        Radius = radius,
        Velocity = velocity,
        dlnV_dlnr_1 = dlnV_dlnr,
        ElectronDensity = electron_density,
        Temperature = temperature,
        GreyTemperature = grey_temperature,
        Heating = heating,
        RosselandMeanOpacity = rosseland,
        FluxMeanOpacity = flux_mean,
        PlanckMeanOpacity = plank_mean,
        AtomDensity = atom_density,
        IonDensity = ion_density,
        MassDensity = mass_density,
        Clumping = clumping,
        HydrogenDensity = h_density,
        HeliumDensity = he_density
    )
end

if abspath(PROGRAM_FILE) == @__FILE__
    # Example usage:
    filename = ARGS[1]
    df = read_tabulated_data_to_dataframe(filename)

    # Show the DataFrame (first 5 rows)
    println(first(df, 5))
end