---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.applications(uniqueName='{uniqueName}').applications_with_unique_name_request_builder import ApplicationsWithUniqueNameRequestBuilder
from msgraph.generated.models.application import Application

graph_client = GraphServiceClient(credentials, scopes)

request_body = Application(
	display_name = "Display name",
)

request_configuration = ApplicationsWithUniqueNameRequestBuilder.ApplicationsWithUniqueNameRequestBuilderPatchRequestConfiguration()
request_configuration.headers.add("Prefer", "create-if-missing")


result = await graph_client.applications_with_unique_name("{uniqueName}").patch(request_body, request_configuration = request_configuration)


```