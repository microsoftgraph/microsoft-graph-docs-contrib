---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.approval_item_response import ApprovalItemResponse

graph_client = GraphServiceClient(credentials, scopes)

request_body = ApprovalItemResponse(
	response = "Approve",
	comments = "Approve this request",
)

result = await graph_client.solutions.approval.approval_items.by_approval_item_id('approvalItem-id').responses.post(request_body)


```