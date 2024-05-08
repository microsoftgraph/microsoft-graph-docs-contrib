---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.todo.lists.item.tasks.item.attachments.create_upload_session.create_upload_session_post_request_body import CreateUploadSessionPostRequestBody
from msgraph.generated.models.attachment_info import AttachmentInfo

graph_client = GraphServiceClient(credentials, scopes)

request_body = CreateUploadSessionPostRequestBody(
	attachment_info = AttachmentInfo(
		attachment_type = AttachmentType.File,
		name = "flower",
		size = 3483322,
	),
)

result = await graph_client.me.todo.lists.by_todo_task_list_id('todoTaskList-id').tasks.by_todo_task_id('todoTask-id').attachments.create_upload_session.post(request_body)


```