---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Extension()
request_body.@odata_type = 'microsoft.graph.openTypeExtension'

additional_data = [
'extension_name' => 'com.contoso.roamingSettings', 
'theme' => 'dark', 
'color' => 'purple', 
'lang' => 'Japanese', 
];
request_body.additional_data(additional_data)





result = await client.me.extensions.post(request_body = request_body)


```