using GenieWebApp
using Documenter

DocMeta.setdocmeta!(GenieWebApp, :DocTestSetup, :(using GenieWebApp); recursive=true)

makedocs(;
    modules=[GenieWebApp],
    authors="Jaan Tollander de Balsch",
    repo="https://github.com/csc-training/GenieWebApp.jl/blob/{commit}{path}#{line}",
    sitename="GenieWebApp.jl",
    format=Documenter.HTML(;
        # prettyurls=get(ENV, "CI", "false") == "true",
        prettyurls = true,
        canonical="https://csc-training.github.io/GenieWebApp.jl",
        assets=String[],
    ),
    pages=[
        "Introduction" => "index.md",
        "Developing a Genie Application" => [
            joinpath("genie", "development.md"),
            joinpath("genie", "testing.md"),
        ],
        "Deploying to Virtual Machine using OpenStack (v5.5.0)" => [
            joinpath("openstack", "web-user-interface.md"),
            joinpath("openstack", "command-line-interface.md"),
        ],
        "Deploying to OpenShift Container Platform (v3.11.0)" => [
            joinpath("openshift", "docker-container.md"),
            joinpath("openshift", "web-user-interface.md"),
            joinpath("openshift", "command-line-interface.md"),
        ],
    ],
)

deploydocs(;
    repo="github.com/csc-training/GenieWebApp.jl",
)