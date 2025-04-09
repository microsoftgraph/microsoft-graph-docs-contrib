---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.person_award import PersonAward
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PersonAward(
	issuing_authority = "International Association of Branding Management",
	thumbnail_url = "https://iabm.io/sdhdfhsdhshsd.jpg",
)

result = await graph_client.users.by_user_id('user-id').profile.awards.by_person_award_id('personAward-id').patch(request_body)


```