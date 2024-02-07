---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = SecretsPutRequestBody(
	value = [
		SynchronizationSecretKeyStringValuePair(
			key = SynchronizationSecret.BaseAddress,
			value = "user@domain.com",
		),
		SynchronizationSecretKeyStringValuePair(
			key = SynchronizationSecret.SecretToken,
			value = "password-value",
		),
		SynchronizationSecretKeyStringValuePair(
			key = SynchronizationSecret.SyncNotificationSettings,
			value = "{\"Enabled\":false,\"DeleteThresholdEnabled\":false}",
		),
		SynchronizationSecretKeyStringValuePair(
			key = SynchronizationSecret.SyncAll,
			value = "false",
		),
	],
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.secrets.put(request_body)


```