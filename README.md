# RISCV-Hackathon
Following is a guide to install necessary tools forRISC-V Hackathon. 

:warning: All the instructions are provivded for Linux Debian (Ubuntu) based Operating System,

## RISC-V Toolchain
Though, we can [build](https://github.com/riscv-collab/riscv-gnu-toolchain) the toolchain from source or use the [pre-build](https://github.com/riscv-collab/riscv-gnu-toolchain/releases/tag/2022.10.11) toolchain. But don't require customize fancy features of the toolchain for application. The following command suffice. Run it to install the toolchain.

    sudo apt-get install gcc-riscv64-unknown-elf

## Verilog Simulator
An HDL Simulator is required that can simulate Verilog (or System Verilog designs). We have the following options.

### Icarus
:warning: It only works for Verilog designs and may not for System.

Run the following commands to install Icarus Verilog and GTK wave to view the waveform.

    sudo apt­get install iverilog
    sudo apt­get install gtkwave

### Verilator
Run the following command to install [Verilator](https://verilator.org/guide/latest/).

    sudo apt-get install verilator

### Modelsim
Modelsim Setup Lite Edition will be provided on the spot. Refer the [guide](https://profile.iiita.ac.in/bibhas.ghoshal/COA_2020/Lab/ModelSim%20Linux%20installation.html) to install the Modelsim on Linux. 

:warning: Remember that we need to have the ability to complile and simulate the design using command line interface (CLI). [User manual](https://www.microsemi.com/document-portal/doc_view/131619-modelsim-user) contains the instructions for that.

### Vivado Xsim
The setup for Vivado will also be available on the spot. But we need to have the following packages installed before the installation of Vivado.

    sudo apt-get install libncurses5
    sudo apt-get install libtinfo5

After installation of Vivado, source the `settings64.sh` to `bashrc` to run Vivado from anywhere using commandline by just typing `vivado` on CLI.

## RISCOF

[RISCOF](https://riscof.readthedocs.io/en/stable/) is the standard RISC-V Compliance testing framework. Run the following commands to install RISCOF.

    sudo apt-get -y install python3-pip
    sudo apt-get install -y python3-setuptools
    pip3 install git+https://github.com/riscv/riscof.git

## SAIL RISC-V

SAIL-riscv is the Golden reference model for RISC-V architecture. The pre-build binaries for SAIL model is given in the repo. Run the following commands to setup the model.

    sudo mkdir opt/sail-riscv
    sudo tar -xzf $sail-riscv.tar.gz -C opt/sail-riscv

Add the following line to the `bashrc`.

    export PATH=$PATH:/opt/sail-riscv

Run either of the following commands to check whether the sail model is setup correctly.

    riscv_sim_RV32
