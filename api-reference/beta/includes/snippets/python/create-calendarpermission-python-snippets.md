---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.calendar_permission import CalendarPermission
from msgraph_beta.generated.models.email_address import EmailAddress
from msgraph_beta.generated.models.calendar_role_type import CalendarRoleType

graph_client = GraphServiceClient(credentials, scopes)

request_body = CalendarPermission(
	email_address = EmailAddress(
		name = "Samantha Booth",
		address = "samanthab@contoso.com",
	),
	is_inside_organization = True,
	is_removable = True,
	role = CalendarRoleType.Read,
)

result = await graph_client.users.by_user_id('user-id').calendar.calendar_permissions.post(request_body)


```