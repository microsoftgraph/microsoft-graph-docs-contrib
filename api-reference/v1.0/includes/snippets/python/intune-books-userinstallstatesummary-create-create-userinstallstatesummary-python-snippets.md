---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.user_install_state_summary import UserInstallStateSummary
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UserInstallStateSummary(
	odata_type = "#microsoft.graph.userInstallStateSummary",
	user_name = "User Name value",
	installed_device_count = 4,
	failed_device_count = 1,
	not_installed_device_count = 7,
)

result = await graph_client.device_app_management.managed_e_books.by_managed_e_book_id('managedEBook-id').user_state_summary.post(request_body)


```