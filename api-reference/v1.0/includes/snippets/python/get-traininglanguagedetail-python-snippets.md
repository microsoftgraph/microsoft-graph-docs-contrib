---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = TrainingLanguageDetailItemRequestBuilder.TrainingLanguageDetailItemRequestBuilderGetQueryParameters(
		filter = "locale eq 'en'",
)

request_configuration = TrainingLanguageDetailItemRequestBuilder.TrainingLanguageDetailItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.attack_simulation.trainings.by_training_id('training-id').language_details.by_training_language_detail_id('trainingLanguageDetail-id').get(request_configuration = request_configuration)


```