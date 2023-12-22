---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = EmailFileAssessmentRequest(
	odata_type = "#microsoft.graph.emailFileAssessmentRequest",
	recipient_email = "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com",
	expected_assessment = ThreatExpectedAssessment.Block,
	category = ThreatCategory.Malware,
	content_data = "UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....",
)

result = await graph_client.information_protection.threat_assessment_requests.post(request_body)


```