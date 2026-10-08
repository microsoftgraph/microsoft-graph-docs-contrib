---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.distribution_list import DistributionList
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DistributionList(
	display_name = "Updated Project Team",
)

result = await graph_client.me.distribution_lists.by_distribution_list_id('distributionList-id').patch(request_body)


```