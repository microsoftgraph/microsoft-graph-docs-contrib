---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.published_resource import PublishedResource

graph_client = GraphServiceClient(credentials, scopes)

request_body = PublishedResource(
	display_name = "Demo provisioning (updated)",
)

result = await graph_client.on_premises_publishing_profiles.by_on_premises_publishing_profile_id('onPremisesPublishingProfile-id').published_resources.by_published_resource_id('publishedResource-id').patch(request_body)


```