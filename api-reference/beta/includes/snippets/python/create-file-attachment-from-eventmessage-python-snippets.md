---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.attachment import Attachment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Attachment(
	odata_type = "#Microsoft.OutlookServices.FileAttachment",
	name = "name-value",
	content_type = "contentType-value",
	is_inline = False,
	additional_data = {
			"content_location" : "contentLocation-value",
			"content_bytes" : "contentBytes-value",
	}
)

result = await graph_client.me.messages.by_message_id('message-id').attachments.post(request_body)


```