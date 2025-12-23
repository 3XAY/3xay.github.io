---
hide:
  - navigation
  - toc
---

# Pixeldust

<a href="https://pixeldust.hackclub.com" id="imgLink"> <img align="left" src="https://3xay.github.io/assets/hc.png" id="imgIcon"></a>
<a href="https://github.com/3XAY/pixeldust" id="imgLink"> <img align="left" src="https://3xay.github.io/assets/github.png" id="imgIcon"></a>
<br>

### What is pixeldust?
Pixeldust was yet another ysws program by [Hack Club](../HackClub/HackClub.md). The goal this time is to create a neopixel-based PCB trinket, and a lot of people made christmas decorations. Although PCB trinkets are cool and all, I thought that I could make something a little more functional.

### Imagining
Since I record videos fairly often, I need some better lighting. It would also be pretty useful when it comes to soldering. So now I know that I need a lightbox of some sort, but what would it look like? What would it do? Which LEDs should I use?

### The features
* Low cost
* ARGBW
* Has a mounting system
* 8x8 grid of LEDs
* Can be powered by any USB port
* Presets + live adjustments

### Sketching everything out
Now that I knew what I wanted, I worked on bringing my ideas to life. But before I could do that, I needed to put them down on paper. I created sketches with how the box would look, the controls, the button maps, and a schematic.
<img align="right" src="https://3xay.github.io/assets/Pixeldust/sketchedit.png" width="1300em" style="padding-top: 2em;">

### The BOM
Since being low-cost was a priority, I had to make sure I wasn't wasting money anywhere in my Bill of Materials (BOM). I ended up with the following:


* Xiao RP2040 - $3.99
* PCB - $2.00
    * White soldermask, helps reflect light outwards
    * Black silkscreen, cheaper
    * No order number on PCB, free
    * Untented vias, free + easier to solder to
* PCB Shipping - $1.50
    * Global Standard Direct Line
* [SK6812-5050 * 65](https://www.lcsc.com/product-detail/RGB-LEDs-Built-in-IC_OPSCO-Optoelectronics-SKC6812RGBW-BW-B_C5380878.html) - $7.51
    * 7000K
    * Can't order just 64
* Cherry MX-style switch - $0.20
* [EC11 Encoder with switch](https://www.lcsc.com/product-detail/Rotary-Encoders_ALPSALPINE-EC11E18244AU_C202365.html?s_z=n_EC11) - $1.99
* [USB-C Port (2P)](https://www.lcsc.com/product-detail/USB-Connectors_SAMZO-FKAKALCCA_C39833028.html) - $0.60
* [Power rocker switch](https://www.lcsc.com/product-detail/Rocker-Switches_HCTL-RS601A-1010013BB_C5124217.html) - $0.43
* 3D-printed case - variable cost
    * Optional
    * Variable cost due to filaments

Total - $18.02

### Designing the PCB
Since I've already made PCBs in the past, it was pretty simple for me to make the schematic, especially since I drew the wiring diagram above beforehand. Connecting some LEDs, buttons, and an encoder to a microcontroller is fairly simple. Then, it was easy to route the traces on the actual PCB to connect everything, since KiCad already tells you what connects to what. The hardest part was to make it more compact, but I decided to place the RP2040 on the back and surface mount it, giving me more space. Little did I know that making the RP2040 SMD would be an absolute PAIN to solder on, considering that the LEDs were right behind it.
<img align="right" src="https://3xay.github.io/assets/Pixeldust/pcbschematic.png" width="1300em" style="padding-top: 2em;">

### Creating the firmware
Creating the firmware was really simple. I only had to worry about taking input from the buttons and encoder, and then changing some RGBW + brightness values. It was pretty simple to use the built-in CircuitPython libraries to handle the buttons + encoders. After that, I just had to create and update the RGBW variables and use the brightness as a multiplier. Finally, I could use the built-in Neopixel library to send the right data through the data pins to update the LEDs. Finally, I also created some "profiles" that allow you to quickly cycle through some presets that you may find useful.


### Putting it all together
CADing a case is always a bit of nightmare for me. Since I use Blender, which is **definitely** not optimized for CAD, it can be a little annoying to change some things after the fact, but overall it wasn't horrible. Unfortunately, when I 3D-printed my case, there was a decent bit of warping, which meant that the dimensions weren't as accurate as possible. Plus, when I was soldering the Xiao RP2040 onto the board, I realized that it was IMPOSSIBLE because I didn't make it THT, and the SMD LEDs were on the other side. This meant that I had to make sure to solder it perfectly, which ended up being hard since the pads were so close together. In the end, I had to use a normal Raspberry Pi RP2040 and use wires to connect the pins to the right pads. I also ended up destroying some pads in the process of trying to connect the Xiao, so I have some extra wires sticking out. All in all, this made the fully enclosed case difficult. My solution? Get rid of the diffusion layer, it looks the same anyways + is brighter.


### Magic smoke
If you've ever worked with circuits, you're familiar with the term "magic smoke". For those of you who don't know, it's when a component burns up and releases that smoke. You see, I forgot that I needed a diode for my power delivery, so thankfully when I plugged it into a USB-port, it just shorted out safely. Unfortunately, I didn't have a powerful enough diode. Thankfully, I found a 400V, 1A diode from a dead board of some sort. I put it on, but remember, this lightbox uses the full 3 amps at max load. So, as you'd expect, the diode started smoking. Now, I could just get a proper diode, OR I could use one of the many mini heatsinks I have and call it a day. And who would've thought, it actually worked! Even at max load for extended durations!


### The result
Overall, it ended up pretty good. Sure, it looks a little weird, but it works! If I were to make this again, I would think a little harder about the microcontroller placement, adding the right diodes, and making the USB-C port compatible with USB-PD chargers by adding resistors on the CC pins (which this port doesn't have). Some nice quality of life improvements would be an integrated battery, wireless control, more / brighter lights (possible with USB-C PD or just limiting the brightness depending on the actual power usage) and also a few pads that I can use for powering other devices. I actually ended up powering a dead battery-powered toy truck with the exposed 5V power inputs. All in all, I'm pretty happy with the project.
<img align="right" src="https://3xay.github.io/assets/Pixeldust/finallightbox.png" width="1300em" style="padding-top: 2em;">