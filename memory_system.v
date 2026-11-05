 module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);
 
      wire [7:0] inData0, inData1, inData2, inData3;
      wire [7:0] inMemory [3:0];
      wire storeArr [3:0];
      
      demux dmux(
              .data(data),
               .sel(addr),
               .A(inData0),
               .B(inData1),
               .C(inData2),
               .D(inData3)
         );
         
         one_bit_demux store_dmux(
                 .data(store),
                 .sel(addr),
                 .A(storeArr[0]),
                 .B(storeArr[1]),
                 .C(storeArr[2]),
                 .D(storeArr[3])
                 
            );
            
            byte_memory b0(
               .data(inData0),
                .store(storeArr[0]),
                .memory(inMemory[0])
              );
              
               
            byte_memory b1(
               .data(inData1),
                .store(storeArr[1]),
                .memory(inMemory[1])
              );
              
               
            byte_memory b2(
               .data(inData2),
                .store(storeArr[2]),
                .memory(inMemory[2])
              );
              
               
            byte_memory b3(
               .data(inData3),
                .store(storeArr[3]),
                .memory(inMemory[3])
              );
              
              mux m(
                   .Sel(addr),
                   .A(inMemory[0]),
                   .B(inMemory[1]),
                   .C(inMemory[2]),
                   .D(inMemory[3]),
                   .Enable(1'b1),
                   .O(memory)
               );
               
        endmodule