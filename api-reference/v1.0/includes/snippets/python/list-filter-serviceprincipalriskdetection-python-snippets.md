---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity_protection.service_principal_risk_detections.service_principal_risk_detections_request_builder import ServicePrincipalRiskDetectionsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ServicePrincipalRiskDetectionsRequestBuilder.ServicePrincipalRiskDetectionsRequestBuilderGetQueryParameters(
		filter = "riskEventType eq 'investigationsThreatIntelligence' or riskLevel eq 'medium'",
)

request_configuration = ServicePrincipalRiskDetectionsRequestBuilder.ServicePrincipalRiskDetectionsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_protection.service_principal_risk_detections.get(request_configuration = request_configuration)


```