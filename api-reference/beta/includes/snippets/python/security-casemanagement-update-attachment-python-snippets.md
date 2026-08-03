---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.case_management.attachment import Attachment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Attachment(
	display_name = "Case MS-001 Attachment",
	description = "Screenshot of suspicious sign-in activity",
)

result = await graph_client.security.case_management.cases.by_case_id('case-id').attachments.by_attachment_id('attachment-id').patch(request_body)


```