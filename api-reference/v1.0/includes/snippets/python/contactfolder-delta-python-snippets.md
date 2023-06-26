---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)


request_configuration = DeltaRequestBuilder.DeltaRequestBuilderGetRequestConfiguration(
headers = {
		'Prefer' : "odata.maxpagesize=2",
}

)


result = await client.me.contact_folders.delta.get(request_configuration = request_configuration)


```