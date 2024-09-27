---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.solutions.backup_restore.service_apps.item.activate.activate_request_builder import ActivateRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph.generated.solutions.backuprestore.serviceapps.item.activate.activate_post_request_body import ActivatePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ActivatePostRequestBody(
	effective_date_time = "2024-04-19T12:01:03.45Z",
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Authorization", "Bearer <Access-Token>")


result = await graph_client.solutions.backup_restore.service_apps.by_service_app_id('serviceApp-id').activate.post(request_body, request_configuration = request_configuration)


```