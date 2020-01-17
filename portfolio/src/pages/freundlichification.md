# Freundlichificator

\floatfig{left}{../assets/pages/freundlich/original.jpg}{Otto Freundlich, Komposition September 1938}

This project was inspired by the art of Otto Freundlich.
As seen on the left, some of his pieces appear like they were assembled from many similarly shaped primitives (namely rectangles with one rounded-off corner) of varying size and color.

While most of Freundlich's original work is relatively abstract, we found it an interesting challenge to try and assemble our own Freundlich-style images based on non-abstract inputs, such as photographs.

\clearboth

As first step of the "Freundlichification" process, we shift the colors in the input image, such that they match a predefined target color palette, which already helps to tone down the realism in our image.

@@top
\halffig{../assets/pages/freundlich/dom.jpg}{Aachen Cathedral; Photo by CEphoto, Uwe Aranas}
\halffig{../assets/pages/freundlich/shifted.jpg}{Shifted Input Image}
@@

Next we start turning the image into Freundlich primitives.
For this, we start with a completely black canvas and randomly generate a large number of these little snippets, we then take the one snippet that, when filled in with a single color and overlayed on our current canvas, gets us the closest to our target image.

This process alone, however, will leave us with a few unpleasant black "cracks" where no snippets have been generated.
To reduce this effect, we optimize the arrangement of our snippets by going through all of them and trying out if moving each of these by a few pixels results in less uncovered canvas area.

@@top
\halffig{../assets/pages/freundlich/greedy_patches.jpg}{Greedily created snippets}
\halffig{../assets/pages/freundlich/optimized_patches.jpg}{Optimized snippets}
@@
