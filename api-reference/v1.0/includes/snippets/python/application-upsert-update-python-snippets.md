---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.applications(unique_name='{unique_name}').applications_with_unique_name_request_builder import ApplicationsWithUniqueNameRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph.generated.models.application import Application
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Application(
	display_name = "Display name",
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Prefer", "create-if-missing")


result = await graph_client.applications_with_unique_name("{uniqueName}").patch(request_body, request_configuration = request_configuration)


```