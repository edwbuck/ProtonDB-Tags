import unittest
import sys

try:
    from unittest import mock
except ImportError:
    import mock

import protondb_tags

class testcase_ProtonDB_tags(unittest.TestCase):
    def test_fail(self):
        self.assertEqual(False, True)
