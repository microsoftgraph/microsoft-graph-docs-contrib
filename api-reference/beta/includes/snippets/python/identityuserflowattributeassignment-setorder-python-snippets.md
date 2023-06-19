---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SetOrderPostRequestBody()
new_assignment_order = AssignmentOrder()
new_assignment_order.Order(['City', 'extension_GUID_ShoeSize', ])


request_body.new_assignment_order = new_assignment_order



await client.identity.b2c_user_flows.by_b2c_user_flow_id('b2cIdentityUserFlow-id').user_attribute_assignments.set_order.post(request_body = request_body)


```