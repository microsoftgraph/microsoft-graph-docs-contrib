---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.person_annotation import PersonAnnotation
from msgraph.generated.models.item_body import ItemBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = PersonAnnotation(
	detail = ItemBody(
		content_type = BodyType.Text,
		content = "I am originally from Australia, but grew up in Moscow, Russia.",
	),
	display_name = "About Me",
)

result = await graph_client.me.profile.notes.post(request_body)


```