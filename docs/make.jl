using Polynomials
using Documenter

DocMeta.setdocmeta!(Polynomials, :DocTestSetup, :(using Polynomials); recursive=true)

makedocs(;
    modules=[Polynomials],
    authors="Alcyon Lab",
    repo="https://github.com/alcyon-lab/Polynomials.jl/blob/{commit}{path}#{line}",
    sitename="Polynomials.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)
