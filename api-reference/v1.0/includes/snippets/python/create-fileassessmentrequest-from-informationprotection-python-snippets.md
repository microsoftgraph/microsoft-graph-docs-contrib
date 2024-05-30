---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.file_assessment_request import FileAssessmentRequest
from msgraph.generated.models.threat_expected_assessment import ThreatExpectedAssessment
from msgraph.generated.models.threat_category import ThreatCategory

graph_client = GraphServiceClient(credentials, scopes)

request_body = FileAssessmentRequest(
	odata_type = "#microsoft.graph.fileAssessmentRequest",
	expected_assessment = ThreatExpectedAssessment.Block,
	category = ThreatCategory.Malware,
	file_name = "test.txt",
	content_data = "VGhpcyBpcyBhIHRlc3QgZmlsZQ==",
)

result = await graph_client.information_protection.threat_assessment_requests.post(request_body)


```