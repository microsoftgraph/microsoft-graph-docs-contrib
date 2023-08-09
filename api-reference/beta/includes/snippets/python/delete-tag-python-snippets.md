---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = TagRequestBuilder.TagRequestBuilderDeleteQueryParameters(
		forcedelete = "true",
)

request_configuration = TagRequestBuilder.TagRequestBuilderDeleteRequestConfiguration(
query_parameters = query_params,
)


await client.compliance.ediscovery.cases.by_case_id('case-id').tags.by_tag_id('tag-id').delete(request_configuration = request_configuration)


```