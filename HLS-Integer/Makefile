synthesys:
	v++ -c --mode hls --config config.cfg --work_dir work

simulation:
	vitis-run --mode hls --csim --config config.cfg --work_dir work

cosimulation:
	vitis-run --mode hls --cosim --config config.cfg --work_dir work

.PHONY: clean
clean:
	rm -rf work vitis* *.zip *.log *.json .Xil