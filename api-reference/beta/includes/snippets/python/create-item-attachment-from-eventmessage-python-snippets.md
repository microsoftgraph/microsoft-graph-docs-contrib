---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Attachment(
	odata_type = "#Microsoft.OutlookServices.ItemAttachment",
	name = "name-value",
	additional_data = {
			"item" : {
					"@odata_type" : "microsoft.graph.message",
			},
	}
)

result = await graph_client.me.events.by_event_id('event-id').attachments.post(request_body)


```