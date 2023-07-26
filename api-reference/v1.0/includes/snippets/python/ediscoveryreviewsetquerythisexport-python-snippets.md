---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ExportPostRequestBody()
request_body.output_name = 'Export reviewset query via API'

request_body.description = 'Export for the Contoso investigation 2'

request_body.exportoptions(ExportOptions.OriginalFiles,fileInfo,tags('exportoptions.originalfiles,fileinfo,tags'))

request_body.exportstructure(ExportFileStructure.Directory('exportfilestructure.directory'))




await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').review_sets.by_review_set_id('ediscoveryReviewSet-id').queries.by_querie_id('ediscoveryReviewSetQuery-id').microsoft_graph_security_export.post(request_body = request_body)


```