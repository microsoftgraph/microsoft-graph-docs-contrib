---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = RiskDetectionsRequestBuilder.RiskDetectionsRequestBuilderGetQueryParameters(
		filter = "userDisplayName eq 'MyTestUser1'",
)

request_configuration = RiskDetectionsRequestBuilder.RiskDetectionsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_protection.risk_detections.get(request_configuration = request_configuration)


```