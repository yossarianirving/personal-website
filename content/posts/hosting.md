---
title: "Hosting"
date: 2022-11-08T10:27:35-04:00
draft: false
---

The infrastructure behind most websites involves sprawling data centers, highly specialized hardware, and multiple teams dedicated to ensuring four nines of uptime. On the other hand, this website runs on a repurposed desktop computer, uses commodity networking hardware, and someone cosplaying as a sys-admin manages it. This post will show how I'm managing and serving this website (almost) entirely from my basement.

I should acknowledge that I'm using Cloudflare Tunnel to connect my servers to the internet and as a reverse proxy. Self-hosting purists will roll their eyes at this, but it beats paying for a VPS since I'm behind CGNAT. Currently, I have no plans to use Cloudflare for any other services. With that out of the way, let's talk about hardware.

The Cloudflare Tunnel software runs on a Raspberry Pi 3+ with 10/100 ethernet. While that ethernet connection is limiting, I don't plan on switching to a host with gigabit ethernet. An Asrock a300 with an AMD 3200g and 16 GB of ram runs the other containers involved in the operation of this website. The other hardware includes a Ubiquiti switch and a Protectli FW4B firewall appliance.

The contents of the website are hosted on a container using Caddy. I'm updating the site's contents by building on my computer and rsyncing to the container. Currently, I'm working on using CI/CD to build and deploy the website when I push changes to the gitea server.