---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.url_assessment_request import UrlAssessmentRequest
from msgraph_beta.generated.models.threat_expected_assessment import ThreatExpectedAssessment
from msgraph_beta.generated.models.threat_category import ThreatCategory
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UrlAssessmentRequest(
	odata_type = "#microsoft.graph.urlAssessmentRequest",
	url = "http://test.com",
	expected_assessment = ThreatExpectedAssessment.Block,
	category = ThreatCategory.Phishing,
)

result = await graph_client.information_protection.threat_assessment_requests.post(request_body)


```