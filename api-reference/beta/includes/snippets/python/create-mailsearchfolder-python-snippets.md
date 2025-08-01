---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.mail_search_folder import MailSearchFolder
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MailSearchFolder(
	odata_type = "microsoft.graph.mailSearchFolder",
	display_name = "Weekly digests",
	include_nested_folders = True,
	source_folder_ids = [
		"AQMkADYAAAIBDAAAAA==",
	],
	filter_query = "contains(subject, 'weekly digest')",
)

result = await graph_client.me.mail_folders.by_mail_folder_id('mailFolder-id').child_folders.post(request_body)


```