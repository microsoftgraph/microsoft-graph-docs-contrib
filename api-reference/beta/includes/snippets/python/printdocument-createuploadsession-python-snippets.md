---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CreateUploadSessionPostRequestBody()
properties = PrintDocumentUploadProperties()
properties.document_name = 'TestFile.pdf'

properties.content_type = 'application/pdf'

properties.Size = 4533322


request_body.properties = properties



result = await client.print.shares.by_share_id('printerShare-id').jobs.by_job_id('printJob-id').documents.by_document_id('printDocument-id').create_upload_session.post(request_body = request_body)


```