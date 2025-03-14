---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.attachment import Attachment
from msgraph_beta.generated.models.message import Message
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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