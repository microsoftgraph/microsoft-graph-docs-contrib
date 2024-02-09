---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.tag import Tag

graph_client = GraphServiceClient(credentials, scopes)

request_body = Tag(
	description = "This is an updated description.",
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').tags.by_tag_id('tag-id').patch(request_body)


```