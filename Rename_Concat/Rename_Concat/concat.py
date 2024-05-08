
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

reset_env()
conv = CNFizer()

smtfile1 = sys.argv[1]
assert os.path.exists(smtfile1)
smtfile2 = sys.argv[2]
assert os.path.exists(smtfile2)


expr1 = get_formula_fname(smtfile1)
expr2 = get_formula_fname(smtfile2)

print(expr1)
print("***************************")
print(expr2)
print("***************************")
expr = And(expr1,expr2)
print(expr)

"""cnf = conv.convert_as_formula(expr)
print(cnf)
print(is_sat(cnf, solver_name="z3"))"""

write_smtlib(And(expr1,expr2), sys.argv[3])
