---
title: "Fediverse Part 1"
date: 2022-11-25T21:04:30-05:00
draft: false
---

Last week, I attempted to join the fediverse by self-hosting Pleroma. It did not go well.

One of Pleroma's recently added features is hosting the server on a different domain than is displayed in the username. Unfortunately, that feature is only available in the development branch and isn't in a stable release. Foolishly, I forked Pleroma and attempted to merge that feature into the stable branch. After a few minutes, I thought my changes were correct and compiled the software. Everything seemed to work, so I finished setting up Pleroma and successfully created an account.

Problems started appearing after I attempted to follow Molly White (@molly0xfff@hachyderm.io). Not only did none of her toots show, but she had a count of zero for following and followed. In response, I set the domain and host values to "pl.topherward.com" in Pleroma's config file. While this fixed some of the issues, I still can't see the number of favorites or re-toots on anyone's post. While I could continue as is, I'll try again on a different subdomain.