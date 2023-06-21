---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ExportPostRequestBody()
request_body.output_name = '2020-12-06 Contoso investigation export'

request_body.description = 'Export for the Contoso investigation'

request_body.exportoptions(ExportOptions.OriginalFiles,fileInfo,tags('exportoptions.originalfiles,fileinfo,tags'))

request_body.exportstructure(ExportFileStructure.Directory('exportfilestructure.directory'))




await client.compliance.ediscovery.cases.by_case_id('case-id').review_sets.by_review_set_id('reviewSet-id').microsoft_graph_ediscovery_export.post(request_body = request_body)


```