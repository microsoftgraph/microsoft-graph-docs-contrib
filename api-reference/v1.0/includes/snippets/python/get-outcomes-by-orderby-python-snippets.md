---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.education.classes.item.assignments.item.submissions.item.outcomes.outcomes_request_builder import OutcomesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = OutcomesRequestBuilder.OutcomesRequestBuilderGetQueryParameters(
		orderby = ["id"],
)

request_configuration = OutcomesRequestBuilder.OutcomesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').submissions.by_education_submission_id('educationSubmission-id').outcomes.get(request_configuration = request_configuration)


```