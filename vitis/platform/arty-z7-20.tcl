platform create -name {arty-z7-20}\
-hw {../vivado/run/vitis_helloworld/arty_z7_20_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {../workspace/}

platform write
platform generate -domains
platform active {arty-z7-20}
platform generate
