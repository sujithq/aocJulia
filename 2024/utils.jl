# utils.jl

# Load the input
function read_input(file_path)
    open(file_path) do f
        readlines(f)
    end
end

function parse_numbers(line)
    # println(line)
    numbers = parse.(Int, split(line))
    # println(numbers)
    return numbers
end
