from mockito import mock
from mylambda.lambda_handler import LambdaHandler
import unittest


class LambdaHandlerTest(unittest.TestCase):
  def setUp(self):
    self.handler = LambdaHandler()
    self.handler.name = "myname2"
    self.handler.other_service = mock()

  def test_it(self):
    self.handler.handle(None,None)
