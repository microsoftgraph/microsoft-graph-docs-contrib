---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Acronym()
request_body.description = 'A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.'




result = await client.search.acronyms.by_acronym_id('acronym-id').patch(request_body = request_body)


```