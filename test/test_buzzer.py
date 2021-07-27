#!/usr/bin/env python
import rospy, unittest, rostest
import rosnode
import time

class BuzzerTest(unittest.TestCase):
    def test_node_exist(self):
        nodes = rosnode.get_node_names()
        self.assertIn('/buzzer',nodes, "node dose not exist")

if __name__ == '__main__':
    time.sleep(3)
    rospy.init_node('test_buzzer')
    rostest.rosrun('pimouse_app_1', 'test_buzzer', BuzzerTest)
