---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.authored_note import AuthoredNote
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AuthoredNote(
	content = ItemBody(
		content = "Please take a look at the files tagged with follow up",
		content_type = BodyType.Text,
	),
)

result = await graph_client.privacy.subject_rights_requests.by_subject_rights_request_id('subjectRightsRequest-id').notes.post(request_body)


```