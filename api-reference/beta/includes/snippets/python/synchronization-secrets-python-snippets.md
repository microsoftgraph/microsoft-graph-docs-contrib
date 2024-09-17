---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.serviceprincipals.item.synchronization.secrets.secrets_put_request_body import SecretsPutRequestBody
from msgraph_beta.generated.models.synchronization_secret_key_string_value_pair import SynchronizationSecretKeyStringValuePair
from msgraph_beta.generated.models.synchronization_secret import SynchronizationSecret
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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