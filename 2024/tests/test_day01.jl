# tests/test_day01.jl

using Test
include("../day01.jl")

input_test = read_input("inputs/day01-test.txt")
input = read_input("inputs/day01.txt")
@test solve_part1(input_test) == 11
@test solve_part1(input) == 1319616
@test solve_part2(input_test) == 31
@test solve_part2(input) == 27267728
