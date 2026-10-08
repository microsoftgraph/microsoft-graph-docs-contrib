---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.teamwork.sections.item.items.items_request_builder import ItemsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.models.teamwork_section_item import TeamworkSectionItem
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TeamworkSectionItem(
	id = "19:d5b2c3a4-e6f7-8901-abcd-ef3456789012@thread.v2",
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("If-Match", "\"1742515200\"")


result = await graph_client.users.by_user_id('user-id').teamwork.sections.by_teamwork_section_id('teamworkSection-id').items.post(request_body, request_configuration = request_configuration)


```