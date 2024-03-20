---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.published_resource import PublishedResource

graph_client = GraphServiceClient(credentials, scopes)

request_body = PublishedResource(
	display_name = "New provisioning",
	resource_name = "domain1.contoso.com",
)

result = await graph_client.on_premises_publishing_profiles.by_on_premises_publishing_profile_id('onPremisesPublishingProfile-id').published_resources.post(request_body)


```