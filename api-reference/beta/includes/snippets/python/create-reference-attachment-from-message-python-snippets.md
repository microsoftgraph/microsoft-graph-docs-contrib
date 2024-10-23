---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.reference_attachment import ReferenceAttachment
from msgraph_beta.generated.models.reference_attachment_provider import ReferenceAttachmentProvider
from msgraph_beta.generated.models.reference_attachment_permission import ReferenceAttachmentPermission
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReferenceAttachment(
	odata_type = "#microsoft.graph.referenceAttachment",
	name = "Personal pictures",
	source_url = "https://contoso.com/personal/mario_contoso_net/Documents/Pics",
	provider_type = ReferenceAttachmentProvider.OneDriveConsumer,
	permission = ReferenceAttachmentPermission.Edit,
	is_folder = True,
)

result = await graph_client.me.messages.by_message_id('message-id').attachments.post(request_body)


```