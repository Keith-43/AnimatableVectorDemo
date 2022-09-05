This is a simple Swift program to demonstrate the process for using an AnimatableVector for simple 2D plotting.

A DataSource class generates (and publishes) a vector of 16 random Float values every half-second.

A PlotView struct then plots these values along a horizontal axis. The PlotView View renders a PlotShape Shape using an .animation() modifier which animates the plot.  The PlotShape struct contains the animatableData variable which updates the path in a temporaly smooth way.

This is the code to answer a question I posted on StackOverflow at https://stackoverflow.com/questions/73396167/how-to-use-an-animatablevector-for-simple-2d-plotting
