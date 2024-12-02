# Define a function to run tests and capture results
function run_tests(test_cases)
    results = []
    for (description, func, expected) in test_cases
        try
            result = func()
            success = result == expected
            push!(results, (description, success, result, expected))
        catch e
            push!(results, (description, false, "Error: $e", expected))
        end
    end

    # Print test results
    println("Test Results:")
    for (description, success, result, expected) in results
        status = success ? "✅" : "❌"
        println("$status $description")
        if !success
            println("   Result: $result")
            println("   Expected: $expected")
        end
    end
end