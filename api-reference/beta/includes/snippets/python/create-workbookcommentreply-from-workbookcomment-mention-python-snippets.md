---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.workbook_comment_reply import WorkbookCommentReply
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WorkbookCommentReply(
	content_type = "mention",
	additional_data = {
			"rich_content" : "<at id=\"0\">Kate Kristensen</at> - Can you take a look?",
			"mentions" : [
				{
						"id" : 0,
						"name" : "Kate Kristensen",
						"email" : "kakri@contoso.com",
				},
			],
	}
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.comments.by_workbook_comment_id('workbookComment-id').replies.post(request_body)


```