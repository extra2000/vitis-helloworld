# vitis-helloworld-baremetal

| License | Versioning |
| ------- | ---------- |
| [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) | [![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release) |

Helloworld with Vitis.


## Preprequisites

* Target board: `digilentinc.com:arty-z7-20:part0:1.1`.
* Vivado 2021.2 and above.


## Getting Started

Clone this project and `cd` into the project root:
```
git clone https://github.com/extra2000/vitis-helloworld-baremetal.git
cd vitis-helloworld-baremetal
```


## Creating Vivado Project

From the project root directory, execute the following command:
```
cd vivado/run/
flatpak run com.github.corna.Vivado -mode batch -source ../script/create_prj.tcl -notrace -tclargs --project_name vitis_helloworld
```

Then, load the Vivado project:
```
flatpak run com.github.corna.Vivado -mode gui ./vitis_helloworld/vitis_helloworld.xpr
```

Generate XSA file required by Vitis.


## Creating Vitis Project

`cd` into ./workspace:
```
cd workspace
```

Generate platform:
```
flatpak run --command=xsct com.github.corna.Vivado ../vitis/platform/arty-z7-20.tcl
```

Launch Vitis:
```
flatpak run --command=vitis com.github.corna.Vivado -workspace .
```

Then, `Import Projects` > `Eclipse workspace or zip file`:
* Select root directory: `/path/to/vitis-helloworld-baremetal`.
* Projects:
    * `arty-z7-20`
    * `helloworld`
    * `helloworld_system`
* Options:
    * Do not copy projects into workspace.
