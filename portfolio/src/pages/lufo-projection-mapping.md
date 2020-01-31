# Projection Mapping on Complex Surfaces


\floatfig{left}{../assets/pages/proj-mapping/setup.jpg}{Projection Setup}

For the "Geometry Lab" exhibition in the Ludwig Forum in Aachen, one of the pieces we presented was a 3D projection mapping onto a plaster statue.
This projection was then used to visualize parts of a geometry processing pipeline (3D scanning, mesh construction, quad meshing, texturing) directly on the statue (which itself went through this pipeline in order to make the visualization work).
Our setup uses 6 beamers to deliver a presentation that can be viewed from any direction.

For this to work, a lot of pieces have to function together:

\clearboth

## Piece 1: Intrinsic Beamer Calibration

\floatfig{right}{../assets/pages/proj-mapping/calibration.jpg}{Beamer Calibration}

In order to know which pixel in the beamer image we have to "turn on" in order to light up a specific part of the statue, the beamers need to be calibrated with respect to said statue.
The first step of this is the intrinsic calibration.

This step determines the inherent properties of the beamer, which is mostly influenced by the properties and arrangement of its lens(es).

The intrinsic calibration of a beamer is very similar to the intrinsic calibration of a camera (in fact, the final application simulates each beamer as a virtual camera):
We use a test pattern of known dimensions (usually a checkerboard-like one) and over multiple images find the position of each pixel on this board.
For calibrating a camera, this is easy as we can just use the camera to capture an image, find the calibration pattern and use that to locate where pixels show up in 3D space.

With a beamer, this is trickier, as we can't make a photo through the eyes of the projector.
So instead, we project a number of different patterns, the combination of which uniquely defines each pixel of the projected image.
We then use a regular camera to observe these patterns as well as the calibration board and thus again we get the correspondence between image pixels and board position which we can use to compute the intrinsic calibration of the beamer.

\clearboth
