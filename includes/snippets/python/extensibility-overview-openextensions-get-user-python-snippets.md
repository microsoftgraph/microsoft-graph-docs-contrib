---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OpenTypeExtension()
request_body.@odata_type = '#microsoft.graph.openTypeExtension'

request_body.id = 'com.contoso.socialSettings'

additional_data = [
'@odata_context' => 'https://graph.microsoft.com/beta/$metadata#users(\'3fbd929d-8c56-4462-851e-0eb9a7b3a2a5\')/extensions/$entity', 
'xbox_gamer_tag' => 'FierceAdele', 
'linked_in_profile' => 'www.linkedin.com/in/testlinkedinprofile', 
];
request_body.additional_data(additional_data)





result = await client.users.by_user_id('user-id').extensions.by_extension_id('extension-id').get(request_body = request_body)


```