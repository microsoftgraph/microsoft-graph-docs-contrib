---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UrlAssessmentRequest()
request_body.@odata_type = '#microsoft.graph.urlAssessmentRequest'

request_body.url = 'http://test.com'

request_body.expectedassessment(ThreatExpectedAssessment.Block('threatexpectedassessment.block'))

request_body.category(ThreatCategory.Phishing('threatcategory.phishing'))




result = await client.information_protection.threat_assessment_requests.post(request_body = request_body)


```