---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.information_protection.threat_assessment_requests.item.threat_assessment_request_item_request_builder import ThreatAssessmentRequestItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = ThreatAssessmentRequestItemRequestBuilder.ThreatAssessmentRequestItemRequestBuilderGetQueryParameters(
		expand = ["results"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.information_protection.threat_assessment_requests.by_threat_assessment_request_id('threatAssessmentRequest-id').get(request_configuration = request_configuration)


```