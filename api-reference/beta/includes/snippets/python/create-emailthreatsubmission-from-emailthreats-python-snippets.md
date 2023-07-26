---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EmailThreatSubmission()
request_body.@odata_type = '#microsoft.graph.emailUrlThreatSubmission'

request_body.category(SubmissionCategory.Spam('submissioncategory.spam'))

request_body.recipient_email_address = 'tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com'

additional_data = [
'message_url' => 'https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt=', 
];
request_body.additional_data(additional_data)





result = await client.security.threat_submission.email_threats.post(request_body = request_body)


```