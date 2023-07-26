---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)


request_configuration = FileRequestBuilder.FileRequestBuilderGetRequestConfiguration(
headers = {
		'Accept-Language' : "fr-FR",
}

)


result = await client.agreements.by_agreement_id('agreement-id').file.get(request_configuration = request_configuration)


```