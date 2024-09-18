---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.url_threat_submission import UrlThreatSubmission
from msgraph_beta.generated.models.submission_category import SubmissionCategory

graph_client = GraphServiceClient(credentials, scopes)

request_body = UrlThreatSubmission(
	odata_type = "#microsoft.graph.urlThreatSubmission",
	category = SubmissionCategory.Phishing,
	web_url = "http://phishing.contoso.com",
)

result = await graph_client.security.threat_submission.url_threats.post(request_body)


```