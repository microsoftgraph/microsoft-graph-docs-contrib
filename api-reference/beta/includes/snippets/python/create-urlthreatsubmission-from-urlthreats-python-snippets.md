---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = UrlThreatSubmission(
	odata_type = "#microsoft.graph.urlThreatSubmission",
	category = SubmissionCategory.Phishing,
	web_url = "http://phishing.contoso.com",
)

result = await graph_client.security.threat_submission.url_threats.post(body = request_body)


```