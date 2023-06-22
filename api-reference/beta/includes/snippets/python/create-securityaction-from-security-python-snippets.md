---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SecurityAction()
request_body.name = 'BlockIp'

request_body.action_reason = 'Test'

parameters_key_value_pair1 = KeyValuePair()
parameters_key_value_pair1.name = 'IP'

parameters_key_value_pair1.value = '1.2.3.4'


parametersArray []= parametersKeyValuePair1;
request_body.parameters(parametersArray)


vendor_information = SecurityVendorInformation()
vendor_information.provider = 'Windows Defender ATP'

vendor_information.vendor = 'Microsoft'


request_body.vendor_information = vendor_information



result = await client.security.security_actions.post(request_body = request_body)


```