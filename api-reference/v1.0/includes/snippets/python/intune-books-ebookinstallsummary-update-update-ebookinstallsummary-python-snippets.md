---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.e_book_install_summary import EBookInstallSummary

graph_client = GraphServiceClient(credentials, scopes)

request_body = EBookInstallSummary(
	odata_type = "#microsoft.graph.eBookInstallSummary",
	installed_device_count = 4,
	failed_device_count = 1,
	not_installed_device_count = 7,
	installed_user_count = 2,
	failed_user_count = 15,
	not_installed_user_count = 5,
)

result = await graph_client.device_app_management.managed_e_books.by_managed_e_book_id('managedEBook-id').install_summary.patch(request_body)


```