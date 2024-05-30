---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.teamwork.team_templates.team_templates_request_builder import TeamTemplatesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = TeamTemplatesRequestBuilder.TeamTemplatesRequestBuilderGetQueryParameters(
		expand = ["definitions"],
		filter = "definitions/any(a:a/languageTag eq 'en-US')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teamwork.team_templates.get(request_configuration = request_configuration)


```