cd(@__DIR__)
using Pkg

Pkg.activate(".")

using Franklin

cd("./portfolio/")
Franklin.serve(; port = 8081)
