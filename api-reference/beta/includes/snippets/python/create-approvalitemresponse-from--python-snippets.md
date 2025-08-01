---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.approval_item_response import ApprovalItemResponse
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ApprovalItemResponse(
	response = "Approve",
	comments = "Approve this request",
)

result = await graph_client.solutions.approval.approval_items.by_approval_item_id('approvalItem-id').responses.post(request_body)


```