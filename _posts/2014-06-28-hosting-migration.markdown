---
layout: post
title: Hosting migration
date: 2014-06-28 11:52:36.00 +02:00
tags: hosting
---
I recently noticed I actually spend a lot of money to hosting and server resources Im not using at all. 
Such a waste. After a small research I decided to move all my Droplets from [DigitalOcean.com](https://www.digitalocean.com/) 
to its competitor > [linode.com](https://www.linode.com) . I also hosted 2 sites on a separate hosting - elastichost.com 
which is also rather expensive. 
So at the end I sit down and calculated how much resources do I need and for how many resources I actually pay. 
At the begining I tought that maybe the best solution would be to move everything to dedicated machine at [OVH](ovh.de) or 
maybe [Hetzner](hetzner.de) but in both cases this is a cost ~50-70€ per month min. Quite much I think especially when my 
sites do not have significant traffic. &nbsp;
I was definitely searching for something like **digitalocean.com** (DO). 

#### DigitalOcean very reasonable price and offers a bunch of features I was looking for but:

  -  when somebody tries to flood(DDOS) your droplet you are actually on your own (they do not offer any type of protection). 
     Support in this case also seems to be powerless, no matter if this is a targeted attack or just a ricochet. One of my 
     client got such case and to be honest I was really disappointed when I was not able to get any help from DO Support Team, 
  -  when you site/droplet catches some significant traffic DO got poor performance. Yes I know what Im talking about. 
     And Im not talking here about 30Mb/s traffic. I even upgraded my droplet from 2GMEM to 8GMEM it did not help me much I/O 
     was still on a low level (but still DO looks better than most of VPS hosting companies)
  -  it's a pity they do not offer some more extensive monitoring out of the box
 

####So why Linode:
 
  -  for the same price I can get more powerful virtual machine and more disk space 
  -  looks like they got better I/O performance (I will try to provide some stats to proof that)
  -  quick and helpful support - dont gent me wrong DO support is also damn quick but Linode support seems to be more tekkie oriented
  -  better monitoring out of the box - "LongView"


In general I dont think DO is bad, I think it's simple suited for other purposes like test evn or dev env.

After the migration performance increased significantly. 
It was visible quite much especially on my Redmine instance and other RoR based apps.



Peace \o/.