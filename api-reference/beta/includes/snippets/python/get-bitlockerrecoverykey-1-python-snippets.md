---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = RecoveryKeysRequestBuilder.RecoveryKeysRequestBuilderGetRequestConfiguration(
headers = {
		'User-Agent' : "Dsreg/10.0",
		'ocp-client-name' : "My Friendly Client",
		'ocp-client-version' : "1.2",
}

)

result = await graph_client.information_protection.bitlocker.recovery_keys.get(request_configuration = request_configuration)


```