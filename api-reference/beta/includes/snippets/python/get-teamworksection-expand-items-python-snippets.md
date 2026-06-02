---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.teamwork.sections.item.teamwork_section_item_request_builder import TeamworkSectionItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = TeamworkSectionItemRequestBuilder.TeamworkSectionItemRequestBuilderGetQueryParameters(
		expand = ["items"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').teamwork.sections.by_teamwork_section_id('teamworkSection-id').get(request_configuration = request_configuration)


```