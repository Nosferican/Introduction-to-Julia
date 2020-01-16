"""
    Materials

Module will weave all the Julia markdown files to HTML.
"""
module Materials
    using Weave: weave

    function weave_all()
        for (root, dirs, files) ∈ walkdir(@__DIR__)
            for file ∈ filter!(file -> endswith(file, ".jmd"), files)
                weave(joinpath(root, file)) # path to files
            end
        end
    end
    export weave_all
end
