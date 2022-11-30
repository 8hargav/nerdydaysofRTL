# nerdydaysofRTL

This repository contains some verilog code I have learnt in my early days of working in vlsi.

## Introduction

This repository will be helpful for beginner to start from the scratch.

## Toolchain installation for windows

### (1) Verilog compiler - Icarus Varilog (for simulation)

Icarus Varilog is a free compuler implementation for the IEEE-1364 Verilog hardware description language.

To install it go to the link: [iverilog](https://bleyer.org/icarus/) and download the appropriate version.

Run installer.

Select full installation in Select Components.

Don't forget to tick "Add executable folder(s) to the user PATH".

Type ```iverilog``` in cmd to check it is working or not.

### (2) yosys (for synthesis)

Yosys is a framework for Verilog RTL synthesis.

To install it go to the link: [yosys](https://github.com/YosysHQ/oss-cad-suite-build/releases/tag/2022-11-29)

Extract it.

Go to ```*\oss-cad-suite\bin``` folder and add it to system path. To add it to system path type exact ```advancedsystemsettings``` in windows startmenu search bar and Select "Environment Variables" button, Select Path variable and press edit button, press new in pop up dialog box, and paste the path i.e. ```*\oss-cad-suite\bin```

Type ```yosys``` in cmd to check whether it is working or not.

### (3) Graphviz (for converting diagrams generated by yosys)

Graphviz is open source graph visualization software. Graph visualization is a way of representing structural information as diagrams of abstract graphs and networks.

To install it go to the link: [Graphviz](https://graphviz.org/download/) and download appropriate version.

Run installer.

Don't forget to select Add Graphviz to the system PATH.

Type ```dot -V``` in cmd to check it is working or not.

### (4) make (for managing the infra)

Make: GNU make utility to maintain groups of programs.

To install it go to the link: [make](https://gnuwin32.sourceforge.net/packages/make.htm) and download appropriate version.

Run installer.

Select full installation in Select Components.

Go to ```*\GnuWin32\bin``` folder and add it to system path. To add it to system path type exact "advancedsystemsettings" in windows startmenu search bar and Select "Environment Variables" button, Select Path variable and press edit button, press new in pop up dialog box, and paste the path i.e. ```*\GnuWin32\bin```

Type yosys in ```make -v``` to check whether it is working or not.

## Simulation and Synthesis for windows

