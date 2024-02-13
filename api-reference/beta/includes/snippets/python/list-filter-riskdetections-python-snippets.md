---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identityProtection.riskDetections.risk_detections_request_builder import RiskDetectionsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = RiskDetectionsRequestBuilder.RiskDetectionsRequestBuilderGetQueryParameters(
		filter = "riskEventType eq 'unfamiliarFeatures' or riskLevel eq 'medium'",
)

request_configuration = RiskDetectionsRequestBuilder.RiskDetectionsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_protection.risk_detections.get(request_configuration = request_configuration)


```