# Hackpad
***
<img align="left" src="https://3xay.github.io/assets/youtube.png">-
[YouTube](https://youtube.com/playlist?list=PL8pZ9v0F1Ks2gfHrP7J-pUTj4NAnL8gHc&si=BFbylAYve3Dny7cF)
</br>
<img align="left" src="https://3xay.github.io/assets/github.png">-
[Github](https://github.com/3XAY/3XAY_HackPad)

### What is a Macropad?
<img align="right" src="https://3xay.github.io/assets/HackPad/RenderSideView.png">
A macropad is a mini keyboard with only a few keys. (6 in my case). Now, you might be wondering what a keyboard with only 6 keys is good for, and that's a great question!
It's not really meant to be used as a standalone keyboard, but WITH your existing keyboard! Now you might be wondering why you would ever need a keyboard for your keyboard.
Well, you know how `CTRL+C` and `CTRL+V` are copy and paste? There are actually lots of combos like that, and they can be huge timesavers!
I personally use them to do things like open Task Manager, switch between tabs, close windows, open tabs in a new window, render in Blender and SO MUCH MORE!
The best part about a macropad is that it can do anything you want it to! Need it to do a specific mouse action? Done. Need it to type a long string of words that you use a lot? Done.
Need to do a simple key combo? Done! Macropads are such **AMAZING** tools, so why don't we make one?

</br>
<h3 align="right">Step 1: Designing the PCB</h3>
<img align="left" src="https://3xay.github.io/assets/HackPad/FinishedPCB.png">
<div align="right">
The very first step is to design the PCB, which was actually my favorite part. I've never actually dealt with PCBs or their designs, so learning that was a challenge at first.
Eventually, with some guides and tutorials, I got the hang of KiCad. I made a few revisions (3 revisions to be exact) of my PCB schematic until I got all of the features I wanted.
While making the schematic, I found it incredibly relaxing to place a few components down and map each individual trace to each component.
<img align="left" src="https://3xay.github.io/assets/HackPad/PCB3DViewFrontWithModels.png"> The silkscreen on the other hand, was 
incredibly annoying. After I spent a bunch of time doing the silkscreen, it turns out it was too thin to be printed, so I had to go and redo everything to make sure it was thick enough.
The good part, however, is that in the end, I got a fully functional and fairly aesthetic PCB that I was proud of.
</div>
</br>

### Step 2: Making the Case
<img align="right" src="https://3xay.github.io/assets/HackPad/finishedCaseTopDown.png">
I'm personally very comfortable in Blender, which is why that's what I used to make my case. The very first problem I faced was importing
the PCB design from KiCad to Blender. It was fairly easy to do in other CAD software, but kinda annoying to do in Blender. Finally, 
after a lot of research, I found a tool that converted the PCB to a file that could be imported into Blender. It's by [30350n, you should go check it out.](https://github.com/30350n/pcb2blender)
The only problem with this tool was that the textures, although super high-quality, were incredibly laggy, so I spent a lot of time making my own textures, which is why it doesn't look great.
But after the PCB was fully modeled (thanks to [PonderSlime](https://github.com/PonderSlime/) for the 3D models for the parts), it was time to design the actual case.
To be honest, I was actually procrastinating a lot because this is the part I got stuck on for my last macropad, so it was a bit scary. Thankfully, I had lots of guides this time,
and it was a much simpler design. I started with the bottom, and then used that to make the switch plate and top plate. I had some problems (I didn't make enough holes in the switch plate)
and I forgot to make the acrylic 3mm thick, but in the end, I caught all of my errors and was done with the plate.

</br>
<h3 align="right">Step 3: Firmware</h3>
<img align="left" src="https://3xay.github.io/assets/HackPad/circuitPythonLogo.png">
<div align="right">
This is the part that I thought would be the easiest, but oh boy was I wrong. Turns out, firmware is <b>hard</b>, like <i>really</i> hard...
Because I had a QMK compatible MCU (Microcontroller Unit), I thought it would be smooth sailing from here, but I seemed to have forgotten, that I need to actually set it up.
And the worst part, was that my macropad was incredibly weird. Most people have 0 or 1 knobs, I had 3... Most people don't tend to have a screen, I did...
And the most important part is most people tend to use matrix wiring, I used direct wiring... (learn about the difference [here](https://youtu.be/V0M98DuhhBI?si=TxXg1oUVK2Hfz1gU&t=393).) Basically, all of these small problems added up and made it super hard to learn QMK.
On top of that, the submission date was almost here and I needed something. I ended up making a custom firmware in CircuitPython,  which was pretty rushed.
</div>

# THIS ARTICLE IS NOT COMPLETE
# MORE WILL BE ADDED ONCE HACKPADS ARE SHIPPED