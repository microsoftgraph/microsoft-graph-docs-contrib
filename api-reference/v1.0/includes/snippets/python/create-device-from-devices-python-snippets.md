---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Device()
request_body.account_enabled = False

alternative_security_ids_alternative_security_id1 = AlternativeSecurityId()
alternative_security_ids_alternative_security_id1.Type = 2

alternative_security_ids_alternative_security_id1.Key(base64_decode('base64Y3YxN2E1MWFlYw=='))


alternativeSecurityIdsArray []= alternativeSecurityIdsAlternativeSecurityId1;
request_body.alternativesecurityids(alternativeSecurityIdsArray)


request_body.device_id = '4c299165-6e8f-4b45-a5ba-c5d250a707ff'

request_body.display_name = 'Test device'

request_body.operating_system = 'linux'

request_body.operating_system_version = '1'




result = await client.devices.post(request_body = request_body)


```