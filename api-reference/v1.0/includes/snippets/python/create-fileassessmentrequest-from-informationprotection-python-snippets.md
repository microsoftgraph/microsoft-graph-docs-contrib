---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = FileAssessmentRequest()
request_body.@odata_type = '#microsoft.graph.fileAssessmentRequest'

request_body.expectedassessment(ThreatExpectedAssessment.Block('threatexpectedassessment.block'))

request_body.category(ThreatCategory.Malware('threatcategory.malware'))

request_body.file_name = 'test.txt'

request_body.content_data = 'VGhpcyBpcyBhIHRlc3QgZmlsZQ=='




result = await client.information_protection.threat_assessment_requests.post(request_body = request_body)


```