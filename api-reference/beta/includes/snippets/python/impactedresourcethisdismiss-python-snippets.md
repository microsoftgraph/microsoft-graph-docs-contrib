---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.directory.recommendations.item.impactedresources.item.dismiss.dismiss_post_request_body import DismissPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DismissPostRequestBody(
	dismiss_reason = "Application is no longer needed.",
)

result = await graph_client.directory.recommendations.by_recommendation_id('recommendation-id').impacted_resources.by_impacted_resource_id('impactedResource-id').dismiss.post(request_body)


```