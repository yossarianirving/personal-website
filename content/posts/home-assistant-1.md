---
title: "Home Assistant #1"
date: 2023-11-17T21:31:31-05:00
draft: false
---

Now that I own my own home, I have decided to make a second effort at setting up a smart home. Like the last time, I have decided to go with [Home Assistant](https://www.home-assistant.io/) as my platform of choice. Unlike last time, I hope to create automations that are actually useful. 

To simplify the overall setup, I'm using the [Home Assistant Yellow](https://www.home-assistant.io/yellow/) and a Raspberry Pi CM4 (4GB model) to host Home Assistant. The built-in Zigbee, M.2 slot, low power consumption, and community made this an easy choice. I would have preferred to get the Power over Ethernet version, but that was heavily back-ordered.

While I'm optimistic about automating my home, multiple challenges are currently apparent. First, I didn't think about smart devices when upgrading the electrical system in my house. Most of my electrical boxes are old and may not be deep enough for the current generation of smart switches. Additionally, most of the switches use old cloth wiring. Currently, this isn't an issue, but I am not comfortable working with those wires myself. 

The second challenge is my decision to segregate IoT devices into a separate VLAN. Putting IoT devices on a separate network was the correct decision for security and privacy reasons, but it does cause a bit of a hassle. When adopting wifi devices, I have to log in to my IoT network first. It has also prevented me from using Apple's HomeKit Bridge in Home Assistant. Unlike the previous challenge, this would only take me an hour or two to fix and I don't think it would be worth making the security sacrifice.

In the future, I plan on adding water leak detectors, air quality sensors, and possibly some smart lighting.