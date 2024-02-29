---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.education.classes.item.assignments.item.deactivate.deactivate_request_builder import DeactivateRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = DeactivateRequestBuilder.DeactivateRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("Prefer", "include-unknown-enum-members")


result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').deactivate.post(request_configuration = request_configuration)


```