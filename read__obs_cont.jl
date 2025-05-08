if abspath(PROGRAM_FILE) == @__FILE__
    using Pkg
    Pkg.add("DataFrames")
end

using DataFrames

function read__obs_cont(filename::String)::DataFrame
   # Read all lines
   lines = readlines(filename)
   
   # Find the frequency and flux blocks
   freq_start = findfirst(l -> occursin("Continuum Frequencies", l), lines)
   flux_start = findfirst(l -> occursin("Observed intensity", l), lines)
   
   if freq_start === nothing || flux_start === nothing
       error("Could not find frequency or flux blocks in the file")
   end
   
   # Extract frequency lines (between freq_start and flux_start)
   freq_lines = lines[freq_start+1 : flux_start-1]
   
   # Extract flux lines (after flux_start)
   flux_lines = lines[flux_start+1 : end]
   
   # Parse frequencies (handling scientific notation)
   frequencies = Float64[]
   for line in freq_lines
       # Split line into numbers (may contain scientific notation)
       numbers = split(line)
       for num in numbers
           # Handle cases like 9.9414925E+02
           push!(frequencies, parse(Float64, num))
       end
   end
   
   # Parse fluxes (handling compact notation like 9.0378-265)
   fluxes = Float64[]
   for line in flux_lines
       # Split line into numbers
       numbers = split(line)
       for num in numbers
           # Handle compact notation (9.0378-265 means 9.0378e-265)
           if occursin(r"\d+-\d+$", num)
               num = replace(num, "-" => "e-")
           end
           push!(fluxes, parse(Float64, num))
       end
   end
   
   # Verify lengths match
   if length(frequencies) != length(fluxes)
       error("Number of frequencies ($(length(frequencies))) doesn't match number of fluxes ($(length(fluxes)))")
   end
   
   # Create DataFrame
   return DataFrame(freq=frequencies, fflx=fluxes)
end

if abspath(PROGRAM_FILE) == @__FILE__
    # Example usage:
    filename = ARGS[1]
    df = read__obs_fin(filename)

    # Show the DataFrame (first 5 rows)
    println(first(df, 5))
end