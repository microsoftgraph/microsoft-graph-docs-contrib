---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.extension import Extension
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Extension(
	odata_type = "#microsoft.outlookServices.openTypeExtension",
	additional_data = {
			"extension_name" : "Com.Contoso.Estimate",
			"company_name" : "Contoso",
			"expiration_date" : "2016-07-30T11:00:00.000Z",
			"deal_value" : 1010100,
			"top_picks" : [
				"Employees only",
				"Add spouse or guest",
				"Add family",
			],
	}
)

result = await graph_client.groups.by_group_id('group-id').threads.by_conversation_thread_id('conversationThread-id').posts.by_post_id('post-id').extensions.by_extension_id('extension-id').patch(request_body)


```