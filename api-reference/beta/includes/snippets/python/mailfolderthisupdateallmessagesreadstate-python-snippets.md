---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.mailfolders.item.update_all_messages_read_state.update_all_messages_read_state_post_request_body import UpdateAllMessagesReadStatePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UpdateAllMessagesReadStatePostRequestBody(
	is_read = True,
	suppress_read_receipts = True,
)

await graph_client.me.mail_folders.by_mail_folder_id('mailFolder-id').update_all_messages_read_state.post(request_body)


```