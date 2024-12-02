# day01.jl

include("utils.jl") # Utility functions used across days

# Solution functions
function solve_part1(input)
    first_numbers = Int[]
    second_numbers = Int[]
    for line in input
        parsed = parse_numbers(line)
        push!(first_numbers, parsed[1])
        push!(second_numbers, parsed[2])
    end

    sorted_first_numbers = sort(first_numbers)
    sorted_second_numbers = sort(second_numbers)

    zipped_differences = [(x, y, abs(x - y)) for (x, y) in zip(sorted_first_numbers, sorted_second_numbers)]

    sum_of_differences = sum(z[3] for z in zipped_differences)

    return sum_of_differences
end

function solve_part2(input)
    first_numbers = Int[]
    second_numbers = Int[]
    for line in input
        parsed = parse_numbers(line)
        push!(first_numbers, parsed[1])
        push!(second_numbers, parsed[2])
    end

    # Initialize a list to store counts
    counts = [0 for _ in first_numbers]

    # Loop over first_numbers and count occurrences in second_numbers
    for (i, num) in enumerate(first_numbers)
        counts[i] = count(x -> x == num, second_numbers)
    end

    return sum((first_numbers[i] * num) for (i, num) in enumerate(counts))
end