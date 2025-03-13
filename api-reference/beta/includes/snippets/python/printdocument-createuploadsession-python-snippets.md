---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.print.shares.item.jobs.item.documents.item.create_upload_session.create_upload_session_post_request_body import CreateUploadSessionPostRequestBody
from msgraph_beta.generated.models.print_document_upload_properties import PrintDocumentUploadProperties
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CreateUploadSessionPostRequestBody(
	properties = PrintDocumentUploadProperties(
		document_name = "TestFile.pdf",
		content_type = "application/pdf",
		size = 4533322,
	),
)

result = await graph_client.print.shares.by_printer_share_id('printerShare-id').jobs.by_print_job_id('printJob-id').documents.by_print_document_id('printDocument-id').create_upload_session.post(request_body)


```