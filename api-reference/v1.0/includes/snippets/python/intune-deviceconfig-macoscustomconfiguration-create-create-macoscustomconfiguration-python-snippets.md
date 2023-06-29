---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MacOSCustomConfiguration()
request_body.@odata_type = '#microsoft.graph.macOSCustomConfiguration'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

request_body.payload_name = 'Payload Name value'

request_body.payload_file_name = 'Payload File Name value'

request_body.Payload(base64_decode('cGF5bG9hZA=='))




result = await client.device_management.device_configurations.post(request_body = request_body)


```