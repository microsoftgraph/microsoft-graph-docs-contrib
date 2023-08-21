---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = FilesRequestBuilder.FilesRequestBuilderGetQueryParameters(
		top = 5,
)

request_configuration = FilesRequestBuilder.FilesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').review_sets.by_review_set_id('ediscoveryReviewSet-id').files.get(request_configuration = request_configuration)


```