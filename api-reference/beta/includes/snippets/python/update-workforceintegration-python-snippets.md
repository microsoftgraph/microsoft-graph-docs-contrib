---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WorkforceIntegration()
request_body.display_name = 'displayName-value'

request_body.ApiVersion = 99

encryption = WorkforceIntegrationEncryption()
encryption.protocol(WorkforceIntegrationEncryptionProtocol.Protocol-value('workforceintegrationencryptionprotocol.protocol-value'))

encryption.secret = 'secret-value'


request_body.encryption = encryption
request_body.is_active = True

request_body.url = 'url-value'

request_body.supports(WorkforceIntegrationSupportedEntities.Supports-value('workforceintegrationsupportedentities.supports-value'))




result = await client.teamwork.workforce_integrations.by_workforce_integration_id('workforceIntegration-id').patch(request_body = request_body)


```