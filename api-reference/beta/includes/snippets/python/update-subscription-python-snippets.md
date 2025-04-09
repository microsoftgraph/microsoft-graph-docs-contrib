---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.subscription import Subscription
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Subscription(
	expiration_date_time = "2016-11-22T18:23:45.9356913Z",
)

result = await graph_client.subscriptions.by_subscription_id('subscription-id').patch(request_body)


```