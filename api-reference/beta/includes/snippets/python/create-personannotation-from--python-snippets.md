---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.person_annotation import PersonAnnotation
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PersonAnnotation(
	detail = ItemBody(
		content_type = BodyType.Text,
		content = "I am originally from Australia, but grew up in Moscow, Russia.",
	),
	display_name = "About Me",
)

result = await graph_client.me.profile.notes.post(request_body)


```