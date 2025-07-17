---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.on_premises_publishing_profiles.item.published_resources.published_resources_request_builder import PublishedResourcesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = PublishedResourcesRequestBuilder.PublishedResourcesRequestBuilderGetQueryParameters(
		expand = ["agentGroups"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.on_premises_publishing_profiles.by_on_premises_publishing_profile_id('onPremisesPublishingProfile-id').published_resources.get(request_configuration = request_configuration)


```