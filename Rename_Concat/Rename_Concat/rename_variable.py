#!/usr/bin/env python
import os
import sys
 
from pysmt.shortcuts import *
from pysmt.typing import *
from pysmt.rewritings import CNFizer
from pysmt.logics import QF_BOOL, QF_LRA, QF_LIA, QF_UFLIRA, QF_AUFBV, ALIA
from pysmt.test import TestCase, skipIfNoSolverForLogic
from pysmt.test.examples import get_example_formulae
from pysmt.test.smtlib.parser_utils import SMTLIB_TEST_FILES, SMTLIB_DIR
from pysmt.smtlib.parser import get_formula_fname


#prend une formule en argument et le nom de la variable a changer et le nouveau nom de la variable
reset_env()
conv = CNFizer()

smtfile = sys.argv[1]
assert os.path.exists(smtfile)

formula = get_formula_fname(smtfile)
var = sys.argv[2] #high
new_name = sys.argv[3]

def rename(formula,var,new_name) :
    tab = get_free_variables(formula)
    #print (get_free_variables(formula))
    tab_var =[]
    for x in tab :
        #print(x)
        #print(get_type(x))
        tab_var.append(x)

    #print(tab_var)
    search = Symbol(var,get_type(tab_var[0]))

    for x in tab_var : #boucle pour chercher la variable a changer
        #print(x)
        if x==search :
            new_var = Symbol(new_name,get_type(x))
            expr = formula.substitute({x:new_var})
            #print(expr)
        search = Symbol(var,get_type(x))
    write_smtlib(expr, "newrep/"+new_name+".smt2")
    return new_var


print(rename(formula,var,new_name))
