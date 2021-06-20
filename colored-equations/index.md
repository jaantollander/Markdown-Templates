---
urlcolor: "blue"
---

All credits of the below example belong to Better Explained. You can read more about colorized equations in their article [Colorized Math Equations](https://betterexplained.com/articles/colorized-math-equations/).

\definecolor{c1}{RGB}{114,0,172}
\definecolor{c2}{RGB}{45,177,93}
\definecolor{c3}{RGB}{251,0,29}
\definecolor{c4}{RGB}{18,110,213}
\definecolor{c5}{RGB}{255,160,109}
\definecolor{c6}{RGB}{219,78,158}
\newcommand{\plain}{\color{black}}
\newcommand{\growth}{\color{c1}}
\newcommand{\unitQuantity}{\color{c2}}
\newcommand{\unitInterest}{\color{c3}}
\newcommand{\unitTime}{\color{c4}}
\newcommand{\perfectly}{\color{c5}}
\newcommand{\compounded}{\color{c6}}

$$
\growth e
\plain =
\perfectly \lim_{n\to\infty}
\plain \left(
\unitQuantity 1 + \unitInterest \frac{1}{\compounded n}
\plain \right)
\unitTime^{1 \cdot \compounded n}
$$

\begin{center}
\growth       The base for continuous growth
\plain        is
\unitQuantity the unit quantity
\unitInterest earning unit interest
\unitTime     for unit time,
\compounded   compounded
\perfectly    as fast as possible
\end{center}
