---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OpenTypeExtension()
request_body.@odata_type = '#microsoft.graph.openTypeExtension'

request_body.extension_name = 'com.contoso.socialSettings'

request_body.id = 'com.contoso.socialSettings'

additional_data = [
'skype_id' => 'skypeId.AdeleV', 
'linked_in_profile' => 'www.linkedin.com/in/testlinkedinprofile', 
'xbox_gamer_tag' => 'AwesomeAdele', 
];
request_body.additional_data(additional_data)





result = await client.users.by_user_id('user-id').extensions.post(request_body = request_body)


```