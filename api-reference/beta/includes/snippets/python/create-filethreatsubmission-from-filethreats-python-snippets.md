---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.file_content_threat_submission import FileContentThreatSubmission
from msgraph_beta.generated.models.submission_category import SubmissionCategory
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = FileContentThreatSubmission(
	odata_type = "#microsoft.graph.security.fileContentThreatSubmission",
	category = SubmissionCategory.Malware,
	file_name = "test.html",
	file_content = "UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....",
)

result = await graph_client.security.threat_submission.file_threats.post(request_body)


```