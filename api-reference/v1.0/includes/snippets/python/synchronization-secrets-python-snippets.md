---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SynchronizationSecretKeyStringValuePair(
	additional_data = {
			"value" : [
				{
						"key" : "BaseAddress",
						"value" : "user@domain.com",
				},
				{
						"key" : "SecretToken",
						"value" : "password-value",
				},
				{
						"key" : "SyncNotificationSettings",
						"value" : "{\"Enabled\":false,\"DeleteThresholdEnabled\":false}",
				},
				{
						"key" : "SyncAll",
						"value" : "false",
				},
			],
	}
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.secrets.put(request_body)


```