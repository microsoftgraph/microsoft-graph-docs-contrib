---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = ThreatAssessmentRequestItemRequestBuilder.ThreatAssessmentRequestItemRequestBuilderGetQueryParameters(
		expand = ["results"],
)

request_configuration = ThreatAssessmentRequestItemRequestBuilder.ThreatAssessmentRequestItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.information_protection.threat_assessment_requests.by_threat_assessment_request_id('threatAssessmentRequest-id').get(request_configuration = request_configuration)


```