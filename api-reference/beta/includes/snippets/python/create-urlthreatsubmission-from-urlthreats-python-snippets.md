---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UrlThreatSubmission()
request_body.@odata_type = '#microsoft.graph.urlThreatSubmission'

request_body.category(SubmissionCategory.Phishing('submissioncategory.phishing'))

request_body.web_url = 'http://phishing.contoso.com'




result = await client.security.threat_submission.url_threats.post(request_body = request_body)


```