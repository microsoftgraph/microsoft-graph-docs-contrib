---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = IdentityUserFlowAttributeAssignment()
request_body.userinputtype(IdentityUserFlowAttributeInputType.TextBox('identityuserflowattributeinputtype.textbox'))




result = await client.identity.b2x_user_flows.by_b2x_user_flow_id('b2xIdentityUserFlow-id').user_attribute_assignments.by_user_attribute_assignment_id('identityUserFlowAttributeAssignment-id').patch(request_body = request_body)


```