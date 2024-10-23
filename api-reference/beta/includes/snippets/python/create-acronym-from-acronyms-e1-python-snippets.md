---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.search.acronym import Acronym
from msgraph_beta.generated.models.answer_state import AnswerState
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Acronym(
	display_name = "DNN",
	stands_for = "Deep Neural Network",
	description = "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.",
	web_url = "http://microsoft.com/deep-neural-network",
	state = AnswerState.Draft,
)

result = await graph_client.search.acronyms.post(request_body)


```