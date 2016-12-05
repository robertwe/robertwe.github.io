---
layout: page
title: "Prices for VMs on Xen cluster"
description: ""
permalink: /prices.html
---
<script type="text/javascript" async
  src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-MML-AM_CHTML">
</script>


| RAM | vCPU | Price (€) |
|:---:|:----:|:---------:|
|  1G |   1  |     5     |
|  2G |   2  |     10    |
|  4G |   4  |     30    |
|  8G |   6  |     60    |
| 12G |   8  |    120    |
| 16G |  10  |    160    |
| 24G |  12  |    240    |
| 32G |  16  |    320    |

<hr />


### Our universe (in SI units):

$$
\begin{align*}
  \frac{\partial\mathcal{D}}{\partial t} \quad & = \quad \nabla\times\mathcal{H},   & \quad \text{(Faraday's law)} \\[5pt]
  \frac{\partial\mathcal{B}}{\partial t} \quad & = \quad -\nabla\times\mathcal{E},  & \quad \text{(Ampère's circuital law)}   \\[5pt]
  \nabla\cdot\mathcal{B}                 \quad & = \quad 0,                         & \quad \text{(Gauss's law for magnetism)}   \\[5pt]
  \nabla\cdot\mathcal{D}                 \quad & = \quad 0.                         & \quad \text{(Coulomb's Law)}
  \end{align*}
$$

<hr />

$$
\begin{align*}
  & \phi(x,y) = \phi \left(\sum_{i=1}^n x_ie_i, \sum_{j=1}^n y_je_j \right)
  = \sum_{i=1}^n \sum_{j=1}^n x_i y_j \phi(e_i, e_j) = \\
  & (x_1, \ldots, x_n) \left( \begin{array}{ccc}
      \phi(e_1, e_1) & \cdots & \phi(e_1, e_n) \\
      \vdots & \ddots & \vdots \\
      \phi(e_n, e_1) & \cdots & \phi(e_n, e_n)
    \end{array} \right)
  \left( \begin{array}{c}
      y_1 \\
      \vdots \\
      y_n
    \end{array} \right)
\end{align*}
$$
<hr />
$$
\begin{array}{c|lcr}
n & \text{Left} & \text{Center} & \text{Right} \\
\hline
1 & 0.24 & 1 & 125 \\
2 & -1 & 189 & -8 \\
3 & -20 & 2000 & 1+10i
\end{array}
$$

{% highlight ruby %}
def show
  @widget = Widget(params[:id])
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @widget }
  end
end
{% endhighlight %}
