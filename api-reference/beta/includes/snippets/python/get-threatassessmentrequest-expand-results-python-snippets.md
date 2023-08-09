---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ThreatAssessmentRequestRequestBuilder.ThreatAssessmentRequestRequestBuilderGetQueryParameters(
		expand = ["results"],
)

request_configuration = ThreatAssessmentRequestRequestBuilder.ThreatAssessmentRequestRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.information_protection.threat_assessment_requests.by_threat_assessment_request_id('threatAssessmentRequest-id').get(request_configuration = request_configuration)


```