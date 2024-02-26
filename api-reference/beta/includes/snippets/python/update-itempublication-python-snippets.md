---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.item_publication import ItemPublication

graph_client = GraphServiceClient(credentials, scopes)

request_body = ItemPublication(
	publisher = "International Association of Branding Management Publishing",
	thumbnail_url = "https://iabm.io/sdhdfhsdhshsd.jpg",
)

result = await graph_client.users.by_user_id('user-id').profile.publications.by_item_publication_id('itemPublication-id').patch(request_body)


```