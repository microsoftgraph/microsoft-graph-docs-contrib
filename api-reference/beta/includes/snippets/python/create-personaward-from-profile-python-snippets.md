---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.person_award import PersonAward
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PersonAward(
	description = "Lifetime Achievement award from the International Association of Branding Managers",
	display_name = "Lifetime Achievement Award For Excellence in Branding",
	issued_date = "Date",
	issuing_authority = "International Association of Branding Management",
	thumbnail_url = "https://iabm.io/sdhdfhsdhshsd.jpg",
	web_url = "https://www.iabm.io",
)

result = await graph_client.me.profile.awards.post(request_body)


```