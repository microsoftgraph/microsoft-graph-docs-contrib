---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = User()
custom_security_attributes = CustomSecurityAttributeValue()
additional_data = [
'engineering' => custom_security_attributes = Engineering()
		custom_security_attributes.@odata_type = '#Microsoft.DirectoryServices.CustomSecurityAttributeValue'

		custom_security_attributes.num_vendors@odata_type = '#Int32'

		custom_security_attributes.NumVendors = 8


custom_security_attributes.engineering = engineering

];
custom_security_attributes.additional_data(additional_data)



request_body.custom_security_attributes = custom_security_attributes



result = await client.users.by_user_id('user-id').patch(request_body = request_body)


```