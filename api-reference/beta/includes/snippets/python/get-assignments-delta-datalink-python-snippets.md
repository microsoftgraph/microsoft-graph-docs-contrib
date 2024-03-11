---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.education.classes.item.assignments.delta.delta_request_builder import DeltaRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		deltatoken = "7ORzTfzlUEGDy6BRE3OC-3ePBbvLHCRe4aJ_hjaBKJxUHmn_ODgoM4xreLS7YRaxROmLjac48n-iXm5j6n5aQwlsnC-2OvL3lI0Z8M4klERNmJQjnBn7MHqwXZ6L8GlI3VPnya3E-p1bisiZX97jLvQUAopseIYhvnD6v7fiYrk.fVsHempT6X2CiBh6aN9Ex5nVJ71adKdcf-mdke8OHKs",
)

request_configuration = DeltaRequestBuilder.DeltaRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.delta.get(request_configuration = request_configuration)


```