---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ThreatAssessmentRequest()
request_body.@odata_type = '#microsoft.graph.mailAssessmentRequest'

request_body.expectedassessment(ThreatExpectedAssessment.Block('threatexpectedassessment.block'))

request_body.category(ThreatCategory.Spam('threatcategory.spam'))

additional_data = [
'recipient_email' => 'tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com', 
'message_uri' => 'https://graph.microsoft.com/v1.0/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt=', 
];
request_body.additional_data(additional_data)





result = await client.information_protection.threat_assessment_requests.post(request_body = request_body)


```