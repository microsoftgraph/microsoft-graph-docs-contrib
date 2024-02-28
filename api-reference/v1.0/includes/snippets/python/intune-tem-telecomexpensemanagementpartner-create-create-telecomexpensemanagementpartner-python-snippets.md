---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.telecom_expense_management_partner import TelecomExpenseManagementPartner

graph_client = GraphServiceClient(credentials, scopes)

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