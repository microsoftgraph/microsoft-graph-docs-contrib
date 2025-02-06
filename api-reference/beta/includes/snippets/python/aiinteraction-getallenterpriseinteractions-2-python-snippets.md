---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.copilot.users.item.interaction_history.get_all_enterprise_interactions.get_all_enterprise_interactions_request_builder import GetAllEnterpriseInteractionsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = GetAllEnterpriseInteractionsRequestBuilder.GetAllEnterpriseInteractionsRequestBuilderGetQueryParameters(
		filter = "appClass eq 'IPM.SkypeTeams.Message.Copilot.BizChat'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.copilot.users.by_ai_user_id('aiUser-id').interaction_history.get_all_enterprise_interactions.get(request_configuration = request_configuration)


```