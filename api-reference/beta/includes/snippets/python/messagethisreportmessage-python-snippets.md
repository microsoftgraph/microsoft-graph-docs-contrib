---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.messages.item.report_message.report_message_post_request_body import ReportMessagePostRequestBody
from msgraph_beta.generated.models.report_action import ReportAction
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReportMessagePostRequestBody(
	is_message_move_requested = True,
	report_action = ReportAction.Junk,
)

result = await graph_client.me.messages.by_message_id('message-id').report_message.post(request_body)


```