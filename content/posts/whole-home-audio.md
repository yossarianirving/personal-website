---
title: "Whole Home Audio from Scrap"
date: 2024-12-11T09:31:22-05:00
draft: false
---

Due to technical difficulties, I'm postponing my Anaglyph series. In the meantime, I want to discuss how I built my whole-home audio system (mostly) from scratch. 

A few years ago, multi-room and whole-home audio was limited to wealthy homeowners and DIY audio enthusiasts. However, the rise of Sonos and the ever-decreasing price of embedded computers have transformed multi-room audio from a status symbol to a common feature in wireless speakers and AV receivers. It is now so commonplace that many people overlook it when buying home audio equipment. Unfortunately, there is no standard for synchronized multi-room audio, so setting up a whole-home audio solution usually requires buying into a specific and expensive ecosystem. I had a problem with this expense because I lost my job during the recent Lexmark layoffs. Luckily, multiple open-source solutions allow a more tech-savvy user like myself to hack together a whole home audio solution with off-the-shelf components.

To implement multi-room audio on a budget, I had to take stock of what components I already had:
* DCM bookshelf speakers
* Fosi Audio bt20a 2 channel amp (stereo RCA input)
* Klipsch RP-40PM powered speakers (stereo RCA, optical, USB input)
* Klipsch ProMedia 2.1 computer speakers (in use but has an extra aux input)
* Raspberry Pi 2
* Raspberry Pi 3B+
* A spare Raspberry Pi CM4 (no carrier board)
* Creative Soundblaster Play! 3 USB DAC/headphone amp

Most crucially, I already had a surround sound setup in my living room with a Denon AVR-X2700H receiver. Usually, this is the part of the blog post where I compare multi-room audio solutions, but I have an iPhone, so I went with Airplay 2.

AirPlay 2, like its predecessor AirPlay, is a proprietary local media-streaming protocol that allows users to stream audio or video from their Apple device to a compatible smart speaker or TV. Unlike its predecessor, AirPlay 2 (which I will now be referring to as AirPlay) allows for synchronized multi-room audio. Unfortunately, the only official way to integrate AirPlay into a product is through Apple's MFi program, which precludes its use in DIY systems. Luckily, an open-source (and not strictly speaking legal) implementation is available called [shairport-sync](https://github.com/mikebrady/shairport-sync). Installing shairport-sync on a fresh install of Raspberry Pi OS is straightforward using the [rpi-audio-receiver](https://github.com/nicokaiser/rpi-audio-receiver) script on GitHub.

After very little consideration, I came up with the following setups.

Bedroom:
* Streamer: Raspberry Pi 2 (PoE for network and power)
* DAC: Creative Soundblaster Play! 3
* Amp: Fosi Audio bt20a
* Speakers: DCM TimePiece

Upstairs:
* Streamer: Raspberry Pi 3B+ (WiFi)
* DAC/Amp/Speakers: Klipsch RP-41PM (USB input)

Living Room (pre-existing setup):
* AV Receiver: Denon AVR-X2700H (native AirPlay, Ethernet)
* Speakers: 2x Klipsch RP-500M II (LR), 2x Klipsch R-41M (surrounds), Klipsch RP-502C (center), SVS 3000 Micro (sub)
* Optional Streamer: Apple TV 

Kitchen:
* Apple HomePod Mini (WiFi)\*

Office:
* Streamer: Wiim mini (WiFi)\*
* Speakers: Klipsch ProMedia 2.1

\* Purchased after this project

## Minor Issues

After finishing the bedroom and upstairs setup, I was happy with the results, but a few minor issues cropped up. A few days after setting things up, the Raspberry Pi upstairs would stop streaming after about 15 minutes. Disabling power management for the wlan0 interface solved this issue, but most online documentation gave an outdated command. Sometimes, the devices would not appear in the AirPlay receivers list. As I suspected, this was entirely due to my phone and streamers being on two separate networks with a reasonably strict firewall. Allowing devices in my IoT network to connect to port 5353 (mDNS) on the firewall solved this.

Finally, connecting to the Denon receiver (certified for AirPlay) was sometimes tricky. If the TV is on or the receiver is in standby mode, it may take a few attempts before playing the correct content. The most reliable work method is to turn the receiver on using its remote or through Home Assistant. Unfortunately, adding the steps to turn on the receiver detracts from every other device's most seamless experience. This contrasts with my experience using the Raspberry Pi 2 as an AirPlay receiver, which has been absolutely flawless despite using an unofficial implementation of a proprietary protocol.

## Post project additions

A month or two after setting up the three systems I just described, I purchased a Wiim mini for my office and an Apple HomePod Mini for the kitchen. As expected, the HomePod Mini has worked almost flawlessly as an audio streamer, and its Siri functionality has been useful as a timer and unit converter. The same cannot be said for the Wiim mini since it can take disconnecting and reconnecting to get it streaming audio. I can't completely blame those problems on the product due to my complicated network configuration and the device's proximity to a source of EMI. 

## Final Thoughts

Overall, I'm mostly satisfied with the whole-home audio setup I've created for myself. Including the post-project additions, I have every room in the house covered except the dining room, bathroom, and downstairs using things what I had lying around plus $160. The audio from multiple devices is synchronized so well that the differences are close to imperceptible (I plan on testing these timing differences). Finally, I want to set up an OwnTone server which should allow me to stream multiroom audio over AirPlay from a dedicated device.