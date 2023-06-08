---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = EdiscoveryNoncustodialDataSourceRequestBuilder.EdiscoveryNoncustodialDataSourceRequestBuilderGetQueryParameters(
		expand = ["dataSource"],
)

request_configuration = EdiscoveryNoncustodialDataSourceRequestBuilder.EdiscoveryNoncustodialDataSourceRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').noncustodial_data_sources.by_noncustodial_data_source_id('ediscoveryNoncustodialDataSource-id').get(request_configuration = request_configuration)


```