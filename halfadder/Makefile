module = halfadder

TOOLCMD = iverilog -o $(module).out -Wall -Winfloop -g2012

compile: clean
	$(TOOLCMD) $(module).v

sim: clean
	$(TOOLCMD) $(module).v $(module)_tb.v
	vvp $(module).out
	gtkwave $(module).vcd -r ../gtkwaverc &

build: clean
	copy nul "synth.ys"
	echo read -sv $(module).v > synth.ys
	echo hierarchy -top $(module) >> synth.ys
	echo proc; opt; techmap; opt >> synth.ys
	echo write_verilog synth.v >> synth.ys
	echo show -prefix $(module) >> synth.ys

convert:
	dot $(module).dot -Tpng -o $(module).png

synth: build
	yosys synth.ys

clean:
	del $(module).dot $(module).vcd $(module).out synth.ys synth.v /Q /F
