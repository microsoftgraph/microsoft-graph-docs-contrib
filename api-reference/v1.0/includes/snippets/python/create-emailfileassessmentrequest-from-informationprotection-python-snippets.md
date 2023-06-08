---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ThreatAssessmentRequest()
request_body.@odata_type = '#microsoft.graph.emailFileAssessmentRequest'

request_body.expectedassessment(ThreatExpectedAssessment.Block('threatexpectedassessment.block'))

request_body.category(ThreatCategory.Malware('threatcategory.malware'))

additional_data = [
'recipient_email' => 'tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com', 
'content_data' => 'UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....', 
];
request_body.additional_data(additional_data)





result = await client.information_protection.threat_assessment_requests.post(request_body = request_body)


```