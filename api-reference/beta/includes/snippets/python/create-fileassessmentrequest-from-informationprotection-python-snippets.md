---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.file_assessment_request import FileAssessmentRequest
from msgraph_beta.generated.models.threat_expected_assessment import ThreatExpectedAssessment
from msgraph_beta.generated.models.threat_category import ThreatCategory
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = FileAssessmentRequest(
	odata_type = "#microsoft.graph.fileAssessmentRequest",
	expected_assessment = ThreatExpectedAssessment.Block,
	category = ThreatCategory.Malware,
	file_name = "test.txt",
	content_data = "VGhpcyBpcyBhIHRlc3QgZmlsZQ==",
)

result = await graph_client.information_protection.threat_assessment_requests.post(request_body)


```