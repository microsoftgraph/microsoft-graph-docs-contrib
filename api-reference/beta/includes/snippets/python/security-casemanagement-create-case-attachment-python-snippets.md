---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.case_management.attachment import Attachment
from msgraph_beta.generated.models.attachment_scan_result import AttachmentScanResult
from msgraph_beta.generated.models.security.case_management.attachment_origin import AttachmentOrigin
from msgraph_beta.generated.models.attachment_origin_type import AttachmentOriginType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Attachment(
	odata_type = "#microsoft.graph.security.caseManagement.attachment",
	display_name = "Case MS-001 Attachment",
	description = "Screenshot of suspicious sign-in activity",
	file_size = 1000,
	file_extension = "jpeg",
	scan_result = AttachmentScanResult.NoThreatsFound,
	origin = AttachmentOrigin(
		odata_type = "microsoft.graph.security.caseManagement.attachmentOrigin",
		resource_id = "987757fb-6ef4-1061-17e7-9de0d088e1dd",
		resource_type = AttachmentOriginType.Case,
	),
)

result = await graph_client.security.case_management.cases.by_case_id('case-id').attachments.post(request_body)


```