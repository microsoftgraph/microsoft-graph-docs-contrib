---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Extension()
additional_data = [
'theme' => 'light', 
'color' => 'yellow', 
'lang' => 'Swahili', 
];
request_body.additional_data(additional_data)





result = await client.me.extensions.by_extension_id('extension-id').patch(request_body = request_body)


```