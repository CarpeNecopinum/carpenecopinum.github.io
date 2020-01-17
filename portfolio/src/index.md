@def title = "CarpeNecopinum - Projects"
@def hasmath = false
@def hascode = true
<!-- Note: by default hasmath == true and hascode == false. You can change this in
the config file by setting hasmath = false for instance and just setting it to true
where appropriate -->

# Project Showcase

```julia:projects
#hideall
projs = [
    (name = "Fluxus 2.0 - Surveys",
        image = "assets/teasers/umfrage.jpg",
        page="pub/fluxus-surveys.html"),
    (name = "Freundlichificator",
        image = "assets/pages/freundlich/optimized_patches_unshifted.jpg",
        page="pub/freundlichification.html")]

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
```

\textoutput{projects}
