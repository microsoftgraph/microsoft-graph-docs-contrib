---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.item_publication import ItemPublication
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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