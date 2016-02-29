The entities in this directory are provides for testing purposes.

vdp_behav simulates a VDP, and can be used to test the testbench.

Old files


rcb_behav and db_behav can be used with a structural VDP 
(which should be written early on) to test each block separately 
from the other one. The missing block can be replaced by the 
behavioural equivalent here.

This allows each partner in a pair to test their own block before 
the other block becomes available.

These entities are deprecated this year and not supported. You may still be able to use them, but to promote group cohesion instead we propose a "Design and Test Plan" where you test each other's code against previous versions of the other person's code.