---
layout: page
title: "Prices for VMs on Xen cluster"
description: ""
permalink: /prices.html
---


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

{% highlight ruby %}
def show
  @widget = Widget(params[:id])
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @widget }
  end
end
{% endhighlight %}
