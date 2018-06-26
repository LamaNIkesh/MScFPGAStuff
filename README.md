# My attempt to work with FPGAs, never again!! There is a pdf file somewhere in this clutter for anyone interested.

## Low Latency Router Microarchitecture for Network-on-Chip Implemented on an FPGA

The increasing chip density has enabled multiple cores to be integrated within a single chip giving rise to System-on-Chip(SoC). To overcome scalability and performance bottleneck in SoC, networking concept is introduced in the chip design called Network-on-Chip (NoC). NoC introduces routers within the chip which forms the communication framework. This allows the decoupling of communication aspect of the design from the computation. The architecture and the routing algorithm used for the router determines the latency induced in the router and the induced latency plays a vital role in determining the SoC performance. 

The proposed router microachitecture implemented on an FPGA has a low latency single pipeline stage - best suited for small networks with relatively lesser traffic. Results have shown that in comparison to generic four pipeline stage router, the proposed implementation reduces the router delay by upto 60%. In the proposed design, there are multiple stages running concurrently demonstrating parallelism. The design uses distributed routign algorithm which requires only the destination router Id information whereas source routing requires all the routign information embedded in the packet, making the packet size larger. 

The FPGA implementation of each router utilized only 1%(410) of the total Adaptive Logic Modules (ALMs) available on the De1-SoC prototyping board packaged with Cyclone V FPGA. The maximum clock frequency possible for the design for the FPGA was observed to be 147.3 MHz.



![routers](https://user-images.githubusercontent.com/13660762/28440666-27c58ed4-6d9f-11e7-96cf-1a93d7a3ce83.png)

Fig1:Clock cycles requirement for the proposed single pipelined stage router in a 2x3 mesh network for zero load


![testbench](https://user-images.githubusercontent.com/13660762/28440667-27c9529e-6d9f-11e7-9d0d-7adff6206e28.png)

Fig2:Simulation waveform with test load
