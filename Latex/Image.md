# Add an Image to latex

[Return Home](../README.md)

Create an image folder to contain the png image.  
```
\usepackage{graphicx} % Insert graphic files/images
    \graphicspath{ {./Images/} }
```

Use the width parameter to adjust the size.
```
\begin{center}
    \includegraphics[width=0.75\textwidth]{Images/AlgorithmFlow.png}
\end{center}
```
 ### Additional parameters for graphicx package
 [Graphicx](https://ctan.org/pkg/graphicx?lang=en)