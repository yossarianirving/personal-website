---
title: "Home Assistant #2"
date: 2023-11-24T22:44:22-05:00
draft: false
---

It has been a week since I have been running Home Assistant and I have some thoughts. So far, it has been a good experience with a few issues that aren't technically Home Assistant's fault.

My most frustrating issue is that most of my Aqara Zigbee devices stop connecting to the Zigbee hub. It appears that any Aqara end device connected to the hub works as expected, but Aqara devices that try to use my Sylvania smart plug as a router stop working after an hour or two. Based on my research online, I believe this is due to Aqara's non-standard Zigbee implementation which prevents messages from traveling through a Zigbee mesh network. I will try replacing the Sylvania plug with one from Aqara to see if that changes anything.

On the positive side, I discovered that I can control my Levoit air purifier from Home Assistant. I haven't created an automation using this, but it did come in handy when wildfire smoke rolled through from the Great Smoky Mountains.

So far, my most useful automations involve lighting. When I open the outside door to my kitchen between sunset and sunrise, the light above the sink turns on for thirty seconds. I've found this great since it gets dark early this time of year. I have also automated the Christmas lights that I am putting on my house. Right now, I have a test string on my back porch that turns on at sunset and turns off at 10 pm. Unfortunately, the GE LED light strands I bought at Lowes today are only half-wave rectified. This causes an unpleasant flicker that gives me a slight headache. Luckily the flicker is less noticeable in the dark.

I've thought about the wiring in my house a bit more and the situation is better than I thought last week. This will make it easier to install smart switches or relays, even those that require a neutral wire. I still have a lot of work to do, but I've taken a few good first steps.