---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.information_protection.bitlocker.recovery_keys.recovery_keys_request_builder import RecoveryKeysRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = RecoveryKeysRequestBuilder.RecoveryKeysRequestBuilderGetRequestConfiguration()
request_configuration.headers.add("User-Agent", "Dsreg/10.0")
request_configuration.headers.add("ocp-client-name", "My Friendly Client")
request_configuration.headers.add("ocp-client-version", "1.2")


result = await graph_client.information_protection.bitlocker.recovery_keys.get(request_configuration = request_configuration)


```