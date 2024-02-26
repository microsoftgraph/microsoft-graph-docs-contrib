---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.url_assessment_request import UrlAssessmentRequest

graph_client = GraphServiceClient(credentials, scopes)

request_body = UrlAssessmentRequest(
	odata_type = "#microsoft.graph.urlAssessmentRequest",
	url = "http://test.com",
	expected_assessment = ThreatExpectedAssessment.Block,
	category = ThreatCategory.Phishing,
)

result = await graph_client.information_protection.threat_assessment_requests.post(request_body)


```