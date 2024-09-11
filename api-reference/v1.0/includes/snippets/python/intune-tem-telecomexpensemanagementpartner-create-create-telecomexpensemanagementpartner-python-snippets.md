---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.telecom_expense_management_partner import TelecomExpenseManagementPartner
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TelecomExpenseManagementPartner(
	odata_type = "#microsoft.graph.telecomExpenseManagementPartner",
	display_name = "Display Name value",
	url = "Url value",
	app_authorized = True,
	enabled = True,
	last_connection_date_time = "2016-12-31T23:58:36.6670033-08:00",
)

result = await graph_client.device_management.telecom_expense_management_partners.post(request_body)


```