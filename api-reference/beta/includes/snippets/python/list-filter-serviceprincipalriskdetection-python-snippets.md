---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity_protection.service_principal_risk_detections.service_principal_risk_detections_request_builder import ServicePrincipalRiskDetectionsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = ServicePrincipalRiskDetectionsRequestBuilder.ServicePrincipalRiskDetectionsRequestBuilderGetQueryParameters(
		filter = "riskEventType eq 'investigationsThreatIntelligence' or riskLevel eq 'medium'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_protection.service_principal_risk_detections.get(request_configuration = request_configuration)


```