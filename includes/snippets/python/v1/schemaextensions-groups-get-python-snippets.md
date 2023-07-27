---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = SchemaExtensionsRequestBuilder.SchemaExtensionsRequestBuilderGetQueryParameters(
		filter = "id eq 'graphlearn_test'",
)

request_configuration = SchemaExtensionsRequestBuilder.SchemaExtensionsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.schema_extensions.get(request_configuration = request_configuration)


```