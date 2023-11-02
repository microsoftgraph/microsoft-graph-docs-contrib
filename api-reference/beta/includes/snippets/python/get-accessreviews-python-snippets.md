---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = AccessReviewsRequestBuilder.AccessReviewsRequestBuilderGetQueryParameters(
		filter = "businessFlowTemplateId eq '6e4f3d20-c5c3-407f-9695-8460952bcc68'",
		top = 100,
		skip = 0,
)

request_configuration = AccessReviewsRequestBuilder.AccessReviewsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.access_reviews.get(request_configuration = request_configuration)


```