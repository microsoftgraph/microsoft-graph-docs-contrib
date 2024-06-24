---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.solutions.business_scenarios.item.planner.plan_configuration.localizations.localizations_request_builder import LocalizationsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = LocalizationsRequestBuilder.LocalizationsRequestBuilderGetQueryParameters(
		filter = "languageTag eq 'en-us'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.solutions.business_scenarios.by_business_scenario_id('businessScenario-id').planner.plan_configuration.localizations.get(request_configuration = request_configuration)


```