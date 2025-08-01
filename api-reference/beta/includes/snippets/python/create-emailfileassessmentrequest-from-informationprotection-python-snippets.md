---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.email_file_assessment_request import EmailFileAssessmentRequest
from msgraph_beta.generated.models.threat_expected_assessment import ThreatExpectedAssessment
from msgraph_beta.generated.models.threat_category import ThreatCategory
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EmailFileAssessmentRequest(
	odata_type = "#microsoft.graph.emailFileAssessmentRequest",
	recipient_email = "tifc@contoso.com",
	expected_assessment = ThreatExpectedAssessment.Block,
	category = ThreatCategory.Malware,
	content_data = "UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....",
)

result = await graph_client.information_protection.threat_assessment_requests.post(request_body)


```