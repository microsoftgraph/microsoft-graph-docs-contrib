---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ThreatAssessmentRequest()
request_body.@odata_type = '#microsoft.graph.urlAssessmentRequest'

request_body.expectedassessment(ThreatExpectedAssessment.Block('threatexpectedassessment.block'))

request_body.category(ThreatCategory.Phishing('threatcategory.phishing'))

additional_data = [
'url' => 'http://test.com', 
];
request_body.additional_data(additional_data)





result = await client.information_protection.threat_assessment_requests.post(request_body = request_body)


```