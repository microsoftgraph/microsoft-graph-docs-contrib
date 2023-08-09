---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MailAssessmentRequest()
request_body.@odata_type = '#microsoft.graph.mailAssessmentRequest'

request_body.recipient_email = 'tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com'

request_body.expectedassessment(ThreatExpectedAssessment.Block('threatexpectedassessment.block'))

request_body.category(ThreatCategory.Spam('threatcategory.spam'))

request_body.message_uri = 'https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt='




result = await client.information_protection.threat_assessment_requests.post(request_body = request_body)


```