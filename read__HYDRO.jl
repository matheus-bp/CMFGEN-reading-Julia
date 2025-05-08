if abspath(PROGRAM_FILE) == @__FILE__
    using Pkg
    Pkg.add("DataFrames")
end

using DataFrames

function read__hydro(filename::String)::DataFrame
    lines = readlines(filename)

    # Remove comments and blank lines
    lines = filter(l -> !isempty(strip(l)) && !startswith(strip(l), "#"), lines)

    # Find the end of file
    data_end = findfirst(l -> occursin("Momentum", l), lines)

    # Extract column names
    colnames = split(strip(lines[1]), r"\s{2,}|\t+")
    ncols = length(colnames)

    # Parse data lines
    datalines = lines[2:data_end-1]
    parsed_data = [parse.(Float64, split(strip(l))) for l in datalines]

    # Convert to columns
    columns = [getindex.(parsed_data, i) for i in 1:ncols]

    # Create DataFrame
    return DataFrame([col => data for (col, data) in zip(colnames, columns)])
end

if abspath(PROGRAM_FILE) == @__FILE__
    # Example usage:
    filename = ARGS[1]
    df = read_tabulated_data_to_dataframe(filename)

    # Show the DataFrame (first 5 rows)
    println(first(df, 5))
end