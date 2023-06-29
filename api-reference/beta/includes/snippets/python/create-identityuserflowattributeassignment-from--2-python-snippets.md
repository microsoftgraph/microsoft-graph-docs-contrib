---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = IdentityUserFlowAttributeAssignment()
request_body.is_optional = False

request_body.requires_verification = False

request_body.userinputtype(IdentityUserFlowAttributeInputType.TextBox('identityuserflowattributeinputtype.textbox'))

request_body.display_name = 'Shoe size'

request_body.UserAttributeValues([])

user_attribute = IdentityUserFlowAttribute()
user_attribute.id = 'extension_guid_shoeSize'


request_body.user_attribute = user_attribute



result = await client.identity.b2x_user_flows.by_b2x_user_flow_id('b2xIdentityUserFlow-id').user_attribute_assignments.post(request_body = request_body)


```