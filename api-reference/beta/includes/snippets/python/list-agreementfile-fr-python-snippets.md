---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = FileRequestBuilder.FileRequestBuilderGetRequestConfiguration(
headers = {
		'Accept-Language' : "fr-FR",
}

)

result = await graph_client.agreements.by_agreement_id('agreement-id').file.get(request_configuration = request_configuration)


```