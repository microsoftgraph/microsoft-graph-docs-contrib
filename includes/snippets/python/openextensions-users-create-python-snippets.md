---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OpenTypeExtension()
request_body.@odata_type = 'microsoft.graph.openTypeExtension'

request_body.extension_name = 'com.contoso.roamingSettings'

additional_data = [
'theme' => 'dark', 
'color' => 'purple', 
'lang' => 'Japanese', 
];
request_body.additional_data(additional_data)





result = await client.me.extensions.post(request_body = request_body)


```