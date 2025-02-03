---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.information_protection.threat_assessment_requests.item.threat_assessment_request_item_request_builder import ThreatAssessmentRequestItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ThreatAssessmentRequestItemRequestBuilder.ThreatAssessmentRequestItemRequestBuilderGetQueryParameters(
		expand = ["results"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.information_protection.threat_assessment_requests.by_threat_assessment_request_id('threatAssessmentRequest-id').get(request_configuration = request_configuration)


```