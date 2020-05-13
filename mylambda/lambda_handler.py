from functools import cached_property
from .other_service import OtherService

class LambdaHandler(object):
  def handle(self, event, context):
    print("my name is {}".format(self.name))
    self.other_service.doit(event)

  @cached_property
  def name(self):
    return "myname"

  @cached_property
  def other_service(self):
    return OtherService()

def lambda_handler(event, context):
  return LambdaHandler().handle(event, context)
