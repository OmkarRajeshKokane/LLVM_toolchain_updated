//===----------------------------------------------------------------------===//
// Xdimc - Custom DIMC Vector Extension
//===----------------------------------------------------------------------===//
def OPC_DIMC      : RISCVOpcode<"DIMC",       0b1101011>;


let Predicates = [HasExtXdimc] in {

  let hasSideEffects = 1,
      mayLoad = 1,
      mayStore = 1 in {

    def DIMC_1 : RVInstI<0b001, OPC_DIMC,
                         (outs VR:$vd), (ins VR:$vs1, simm12:$imm12),
                         "dimc1", "$vd, $vs1, $imm12">;

    def DIMC_2 : RVInstI<0b010, OPC_DIMC,
                         (outs VR:$vd), (ins VR:$vs1, simm12:$imm12),
                         "dimc2", "$vd, $vs1, $imm12">;

    def DIMC_4 : RVInstI<0b100, OPC_DIMC,
                         (outs VR:$vd), (ins VR:$vs1, simm12:$imm12),
                         "dimc4", "$vd, $vs1, $imm12">;

    def DIMC_5 : RVInstI<0b101, OPC_DIMC,
                         (outs VR:$vd), (ins VR:$vs1, simm12:$imm12),
                         "dimc5", "$vd, $vs1, $imm12">;

  }
}

