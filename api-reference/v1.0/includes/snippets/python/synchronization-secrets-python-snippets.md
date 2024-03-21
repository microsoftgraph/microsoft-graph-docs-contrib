---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.secrets_put_request_body import SecretsPutRequestBody
from msgraph.generated.models.synchronization_secret_key_string_value_pair import SynchronizationSecretKeyStringValuePair

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