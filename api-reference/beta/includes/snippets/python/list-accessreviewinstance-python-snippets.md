---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = InstancesRequestBuilder.InstancesRequestBuilderGetQueryParameters(
		top = 100,
		skip = 0,
)

request_configuration = InstancesRequestBuilder.InstancesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.access_reviews.definitions.by_access_review_schedule_definition_id('accessReviewScheduleDefinition-id').instances.get(request_configuration = request_configuration)


```