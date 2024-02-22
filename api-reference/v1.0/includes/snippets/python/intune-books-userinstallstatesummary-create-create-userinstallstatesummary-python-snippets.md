---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user_install_state_summary import UserInstallStateSummary

graph_client = GraphServiceClient(credentials, scopes)

request_body = UserInstallStateSummary(
	odata_type = "#microsoft.graph.userInstallStateSummary",
	user_name = "User Name value",
	installed_device_count = 4,
	failed_device_count = 1,
	not_installed_device_count = 7,
)

result = await graph_client.device_app_management.managed_e_books.by_managed_e_book_id('managedEBook-id').user_state_summary.post(request_body)


```