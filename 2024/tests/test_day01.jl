# tests/test_day01.jl

using Test
include("../day01.jl")
include("../utils-test.jl")

input_test = read_input("inputs/day01-test.txt")
input = read_input("inputs/day01.txt")

test_cases = [
    ("Day 01 Example Part 1", () -> solve_part1(input_test), 11),
    ("Day 01 Part 1", () -> solve_part1(input), 1319616),
    ("Day 01 Example Part 2", () -> solve_part2(input_test), 31),
    ("Day 01 Part 2", () -> solve_part2(input), 27267728),
]

run_tests(test_cases)