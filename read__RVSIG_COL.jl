if abspath(PROGRAM_FILE) == @__FILE__
    using Pkg
    Pkg.add("DataFrames")
end

using DataFrames

function read__rvsig_col(filename::String)::DataFrame
    # Read all lines from the file
    lines = readlines(filename)
    
    # Find the line containing "Number of depth points"
    header_line_n = findfirst(line -> occursin(r"^\s*\d+\s*!Number of depth points", line), lines)
    
    if header_line_n === nothing
        error("Could not find the line containing 'Number of depth points'")
    end
    
    # The column headers are on the line after the "Number of depth points" line
    # (e.g., "!    R(10^10cm)       V(km/s)         Sigma           Tau     Index")
    column_header_line = lines[header_line_n + 2]
    
    # Extract column names (skip the "!" and split into words)
    column_names = split(strip(replace(column_header_line, "!" => "")))
    
    # The data starts two lines after the header
    data_start = header_line_n + 3
    
    if data_start > length(lines)
        error("No data found after the header")
    end
    
    # Extract the data lines (ignoring comment lines starting with "!")
    data_lines = filter(line -> !startswith(strip(line), "!"), lines[data_start:end])
    
    # Parse each line into a vector of numbers (including the Index column)
    data = []
    for line in data_lines
        isempty(strip(line)) && continue  # Skip empty lines
        tokens = split(line)
        values = [tryparse(Float64, x) for x in tokens]  # Parse numbers (Float64)
        push!(data, values)
    end

    ncols = length(column_names)
    data_columns = [getindex.(data, i) for i in 1:ncols]
    
    df =  DataFrame([col => data for (col, data) in zip(column_names, data_columns)])
    
    return df
end

if abspath(PROGRAM_FILE) == @__FILE__
    # Example usage:
    filename = ARGS[1]
    df = read_tabulated_data_to_dataframe(filename)

    # Show the DataFrame (first 5 rows)
    println(first(df, 5))
end