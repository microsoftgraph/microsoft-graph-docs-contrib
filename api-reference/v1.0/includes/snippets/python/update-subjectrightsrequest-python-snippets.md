---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.subject_rights_request import SubjectRightsRequest
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SubjectRightsRequest(
	odata_type = "#microsoft.graph.subjectRightsRequest",
	internal_due_date_time = "2021-08-30T00:00:00Z",
)

result = await graph_client.privacy.subject_rights_requests.by_subject_rights_request_id('subjectRightsRequest-id').patch(request_body)


```