---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.teamwork.sections.item.items.item.teamwork_section_item_item_request_builder import TeamworkSectionItemItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

request_configuration = RequestConfiguration()
request_configuration.headers.add("If-Match", "\"1742515200\"")


await graph_client.users.by_user_id('user-id').teamwork.sections.by_teamwork_section_id('teamworkSection-id').items.by_teamwork_section_item_id('teamworkSectionItem-id').delete(request_configuration = request_configuration)


```