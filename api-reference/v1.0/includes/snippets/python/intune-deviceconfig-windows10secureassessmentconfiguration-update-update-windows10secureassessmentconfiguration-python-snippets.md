---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Windows10SecureAssessmentConfiguration()
request_body.@odata_type = '#microsoft.graph.windows10SecureAssessmentConfiguration'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

request_body.launch_uri = 'Launch Uri value'

request_body.configuration_account = 'Configuration Account value'

request_body.allow_printing = True

request_body.allow_screen_capture = True

request_body.allow_text_suggestion = True




result = await client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body = request_body)


```