---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)


request_configuration = JobsRequestBuilder.JobsRequestBuilderGetRequestConfiguration(
headers = {
		'Authorization' : "Bearer {Token}",
}

)


result = await client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.jobs.get(request_configuration = request_configuration)


```