---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.education.classes.item.assignmentSettings.assignment_settings_request_builder import AssignmentSettingsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AssignmentSettingsRequestBuilder.AssignmentSettingsRequestBuilderGetQueryParameters(
		expand = ["defaultGradingScheme"],
)

request_configuration = AssignmentSettingsRequestBuilder.AssignmentSettingsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_settings.get(request_configuration = request_configuration)


```