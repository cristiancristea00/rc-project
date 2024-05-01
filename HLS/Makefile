DEVICE=xc7z020clg400-1

all:
	v++ -c --mode hls --part $(DEVICE) --config synthesys.cfg --work_dir work

.PHONY: clean
clean:
	rm -rf work vitis* *.zip .Xil