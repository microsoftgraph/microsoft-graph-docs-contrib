---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = LocalizationsRequestBuilder.LocalizationsRequestBuilderGetQueryParameters(
		filter = "languageTag eq 'en-us'",
)

request_configuration = LocalizationsRequestBuilder.LocalizationsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.solutions.business_scenarios.by_business_scenario_id('businessScenario-id').planner.plan_configuration.localizations.get(request_configuration = request_configuration)


```