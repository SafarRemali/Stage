(set-logic QF_ABV)
(declare-fun p2 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun g_userPini () (Array (_ BitVec 32) (_ BitVec 8)))
(assert (let ((.def_0 (select p2 #b00000000000000000000000000000011))) (let ((.def_1 ((_ zero_extend 24) .def_0))) (let ((.def_2 (select g_userPini #b00000000000000000000000000000011))) (let ((.def_3 ((_ zero_extend 24) .def_2))) (let ((.def_4 (= .def_3 .def_1))) (let ((.def_5 (= false .def_4))) (let ((.def_6 (select p2 #b00000000000000000000000000000010))) (let ((.def_7 ((_ zero_extend 24) .def_6))) (let ((.def_8 (select g_userPini #b00000000000000000000000000000010))) (let ((.def_9 ((_ zero_extend 24) .def_8))) (let ((.def_10 (= .def_9 .def_7))) (let ((.def_11 (select p2 #b00000000000000000000000000000001))) (let ((.def_12 ((_ zero_extend 24) .def_11))) (let ((.def_13 (select g_userPini #b00000000000000000000000000000001))) (let ((.def_14 ((_ zero_extend 24) .def_13))) (let ((.def_15 (= .def_14 .def_12))) (let ((.def_16 (select p2 #b00000000000000000000000000000000))) (let ((.def_17 ((_ zero_extend 24) .def_16))) (let ((.def_18 (select g_userPini #b00000000000000000000000000000000))) (let ((.def_19 ((_ zero_extend 24) .def_18))) (let ((.def_20 (= .def_19 .def_17))) (let ((.def_21 (= false .def_20))) (let ((.def_22 (and .def_21 .def_15))) (let ((.def_23 (and .def_22 .def_10))) (let ((.def_24 (and .def_23 .def_5))) .def_24))))))))))))))))))))))))))
(check-sat)
