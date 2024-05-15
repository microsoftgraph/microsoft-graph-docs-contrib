---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.print.shares.item.jobs.item.documents.item.create_upload_session.create_upload_session_post_request_body import CreateUploadSessionPostRequestBody
from msgraph.generated.models.print_document_upload_properties import PrintDocumentUploadProperties

graph_client = GraphServiceClient(credentials, scopes)

request_body = CreateUploadSessionPostRequestBody(
	properties = PrintDocumentUploadProperties(
		document_name = "TestFile.pdf",
		content_type = "application/pdf",
		size = 4533322,
	),
)

result = await graph_client.print.shares.by_printer_share_id('printerShare-id').jobs.by_print_job_id('printJob-id').documents.by_print_document_id('printDocument-id').create_upload_session.post(request_body)


```