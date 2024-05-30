---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.authored_note import AuthoredNote
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.body_type import BodyType

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthoredNote(
	content = ItemBody(
		content = "Please take a look at the files tagged with follow up",
		content_type = BodyType.Text,
	),
)

result = await graph_client.privacy.subject_rights_requests.by_subject_rights_request_id('subjectRightsRequest-id').notes.post(request_body)


```