---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Acronym()
request_body.display_name = 'DNN'

request_body.stands_for = 'Deep Neural Network'

request_body.description = 'A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.'

request_body.web_url = 'http://microsoft.com/deep-neural-network'

request_body.state(AnswerState.Draft('answerstate.draft'))




result = await client.search.acronyms.post(request_body = request_body)


```