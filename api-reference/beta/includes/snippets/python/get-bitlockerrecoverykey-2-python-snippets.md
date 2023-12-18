---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = RecoveryKeysRequestBuilder.RecoveryKeysRequestBuilderGetQueryParameters(
		filter = "deviceId eq '1ab40ab2-32a8-4b00-b6b5-ba724e407de9'",
)

request_configuration = RecoveryKeysRequestBuilder.RecoveryKeysRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'User-Agent' : "Dsreg/10.0",
			'ocp-client-name' : "My Friendly Client",
			'ocp-client-version' : "1.2",
}

)

result = await graph_client.information_protection.bitlocker.recovery_keys.get(request_configuration = request_configuration)


```