---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.information_protection.bitlocker.recovery_keys.recovery_keys_request_builder import RecoveryKeysRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = RecoveryKeysRequestBuilder.RecoveryKeysRequestBuilderGetQueryParameters(
		filter = "deviceId eq '1ab40ab2-32a8-4b00-b6b5-ba724e407de9'",
)

request_configuration = RecoveryKeysRequestBuilder.RecoveryKeysRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("User-Agent", "Dsreg/10.0")
request_configuration.headers.add("ocp-client-name", "My Friendly Client")
request_configuration.headers.add("ocp-client-version", "1.2")


result = await graph_client.information_protection.bitlocker.recovery_keys.get(request_configuration = request_configuration)


```