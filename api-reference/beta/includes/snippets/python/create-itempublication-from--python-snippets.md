---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.item_publication import ItemPublication

graph_client = GraphServiceClient(credentials, scopes)

request_body = ItemPublication(
	description = "One persons journey to the top of the branding management field.",
	display_name = "Got Brands? The story of Innocenty Popov and his journey to the top.",
	published_date = "Date",
	publisher = "International Association of Branding Management Publishing",
	thumbnail_url = "https://iabm.io/sdhdfhsdhshsd.jpg",
	web_url = "https://www.iabm.io",
)

result = await graph_client.me.profile.publications.post(request_body)


```