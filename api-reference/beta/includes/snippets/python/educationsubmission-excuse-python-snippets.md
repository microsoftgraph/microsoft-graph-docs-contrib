---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.education.classes.item.assignments.item.submissions.item.excuse.excuse_request_builder import ExcuseRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = ExcuseRequestBuilder.ExcuseRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("Prefer", "include-unknown-enum-members")


result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').submissions.by_education_submission_id('educationSubmission-id').excuse.post(request_configuration = request_configuration)


```