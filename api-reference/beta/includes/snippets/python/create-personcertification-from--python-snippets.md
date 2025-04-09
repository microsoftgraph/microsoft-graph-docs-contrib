---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.person_certification import PersonCertification
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PersonCertification(
	certification_id = "KB-1235466333663322",
	description = "Blackbelt in Marketing - Brand Management",
	display_name = "Marketing Blackbelt - Brand Management",
	thumbnail_url = "https://iame.io/dfhdfdfd334.jpg",
	web_url = "https://www.iame.io/blackbelt",
)

result = await graph_client.me.profile.certifications.post(request_body)


```