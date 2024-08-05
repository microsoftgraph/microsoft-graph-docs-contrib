---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.education.classes.item.assignment_settings.assignment_settings_request_builder import AssignmentSettingsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = AssignmentSettingsRequestBuilder.AssignmentSettingsRequestBuilderGetQueryParameters(
		expand = ["defaultGradingScheme"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_settings.get(request_configuration = request_configuration)


```