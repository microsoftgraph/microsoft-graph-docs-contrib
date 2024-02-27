---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.informationProtection.threatAssessmentRequests.item.threat_assessment_request_item_request_builder import ThreatAssessmentRequestItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ThreatAssessmentRequestItemRequestBuilder.ThreatAssessmentRequestItemRequestBuilderGetQueryParameters(
		expand = ["results"],
)

request_configuration = ThreatAssessmentRequestItemRequestBuilder.ThreatAssessmentRequestItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.information_protection.threat_assessment_requests.by_threat_assessment_request_id('threatAssessmentRequest-id').get(request_configuration = request_configuration)


```