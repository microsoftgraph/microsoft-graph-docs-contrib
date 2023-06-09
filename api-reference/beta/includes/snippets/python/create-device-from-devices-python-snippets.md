---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Device()
request_body.account_enabled = True

alternative_security_ids_alternative_security_id1 = AlternativeSecurityId()
alternative_security_ids_alternative_security_id1.Type = 99

alternative_security_ids_alternative_security_id1.identity_provider = 'identityProvider-value'

alternative_security_ids_alternative_security_id1.Key(base64_decode('base64Y3YxN2E1MWFlYw=='))


alternativeSecurityIdsArray []= alternativeSecurityIdsAlternativeSecurityId1;
request_body.alternativesecurityids(alternativeSecurityIdsArray)


request_body.approximateLastSignInDateTime = DateTime('2016-10-19T10:37:00Z')

request_body.device_id = 'deviceId-value'

request_body.device_metadata = 'deviceMetadata-value'

request_body.DeviceVersion = 99




result = await client.devices.post(request_body = request_body)


```