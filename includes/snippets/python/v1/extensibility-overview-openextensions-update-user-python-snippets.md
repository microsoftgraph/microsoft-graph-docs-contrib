---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Extension()
additional_data = [
'xbox_gamer_tag' => 'FierceAdele', 
'linked_in_profile' => 'www.linkedin.com/in/testlinkedinprofile', 
];
request_body.additional_data(additional_data)





result = await client.users.by_user_id('user-id').extensions.by_extension_id('extension-id').patch(request_body = request_body)


```