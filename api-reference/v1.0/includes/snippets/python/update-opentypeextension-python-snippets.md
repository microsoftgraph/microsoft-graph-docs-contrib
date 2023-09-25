---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Extension(
	odata_type = "Microsoft.OutlookServices.OpenTypeExtension",
	additional_data = {
			"extension_name" : "Com.Contoso.Estimate",
			"company_name" : "Contoso",
			"expiration_date" : "2016-07-30T11:00:00.000Z",
			"deal_value" : 1010100,
			"top_picks" : [
				"Employees only",
				"Add spouse or guest",
				"Add family",
			]
	}
)

result = await graph_client.groups.by_group_id('group-id').threads.by_thread_id('conversationThread-id').posts.by_post_id('post-id').extensions.by_extension_id('extension-id').patch(body = request_body)


```