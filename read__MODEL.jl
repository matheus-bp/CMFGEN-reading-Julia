if abspath(PROGRAM_FILE) == @__FILE__
    using Pkg
    Pkg.add("DataFrames")
end

using DataFrames

function read__model(filename::String)::DataFrame
    # Read all lines
    lines = readlines(filename)
    
    # Find the frequency and flux blocks
    params_start = findfirst(l -> occursin("[NUM_ITS]", l),lines)
    params_end   = findfirst(l -> occursin(r"\*{2,}", l),lines)

    # Initialize the vectors which will build columns
    params = String[]
    values = Any[]
    descri = String[]

    # Isolate the part of the file that contains the parameters given in VADAT
    param_lines = lines[params_start:params_end-2]

    # Create the vectors of parameters, values and parameter description
    for line ∈ param_lines
        if line != ""
            if tryparse(Float64,split(line,"[")[1]) !== nothing
                push!(values, parse(Float64,split(line,"[")[1]))
            else
                push!(values, strip(split(line,"[")[1]))
            end
            push!(params, strip(split(split(line,"[")[2],"]")[1]))
            push!(descri, strip(split(split(line,"[")[2],"]")[2]))
        end
    end

    return DataFrame(parameter=params, value=values, description=descri)
end


if abspath(PROGRAM_FILE) == @__FILE__
    # Example usage:
    filename = ARGS[1]
    df = read_tabulated_data_to_dataframe(filename)

    # Show the DataFrame (first 5 rows)
    println(first(df, 5))
end
