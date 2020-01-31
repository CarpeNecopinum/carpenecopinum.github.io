# This file was generated, do not modify it. # hide
#hideall
projs = [
    (name = "Fluxus 2.0 - Surveys",
        image = "assets/teasers/umfrage.jpg",
        page="pub/fluxus-surveys.html"),
    (name = "Freundlichificator",
        image = "assets/pages/freundlich/optimized_patches_unshifted.jpg",
        page="pub/freundlichification.html"),
    (name = "Projection Mapping",
        image = "assets/teasers/lufo-proj.jpg",
        page="pub/lufo-projection-mapping.html")]

println("@@projects")
for proj in projs
    """
    ~~~
    <a href="$(proj.page)" class="project">
        <h2>$(proj.name)</h2>
        <img alt="$(proj.name)" src="$(proj.image)" />
    </a>
    ~~~
    """ |> print
end
println("@@")