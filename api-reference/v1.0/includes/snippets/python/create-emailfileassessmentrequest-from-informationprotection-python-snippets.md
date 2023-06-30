---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EmailFileAssessmentRequest()
request_body.@odata_type = '#microsoft.graph.emailFileAssessmentRequest'

request_body.recipient_email = 'tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com'

request_body.expectedassessment(ThreatExpectedAssessment.Block('threatexpectedassessment.block'))

request_body.category(ThreatCategory.Malware('threatcategory.malware'))

request_body.content_data = 'UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....'




result = await client.information_protection.threat_assessment_requests.post(request_body = request_body)


```