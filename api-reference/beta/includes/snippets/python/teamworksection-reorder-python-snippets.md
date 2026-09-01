---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.teamwork.sections.reorder.reorder_request_builder import ReorderRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.users.item.teamwork.sections.reorder.reorder_post_request_body import ReorderPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReorderPostRequestBody(
	sections_order = [
		"ce274158-f4f5-4ba7-bd18-0b2204dc1691~10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f~QuickViews",
		"a1b2c3d4-e5f6-7890-abcd-ef1234567890",
		"b2c3d4e5-f6a7-8901-bcde-f12345678901",
	],
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("If-Match", "\"1742515200\"")


result = await graph_client.users.by_user_id('user-id').teamwork.sections.reorder.post(request_body, request_configuration = request_configuration)


```