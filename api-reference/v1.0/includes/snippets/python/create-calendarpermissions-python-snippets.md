---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.calendar_permission import CalendarPermission
from msgraph.generated.models.email_address import EmailAddress
from msgraph.generated.models.calendar_role_type import CalendarRoleType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CalendarPermission(
	email_address = EmailAddress(
		name = "Samantha Booth",
		address = "samanthab@contoso.com",
	),
	is_inside_organization = True,
	is_removable = True,
	role = CalendarRoleType.Read,
)

result = await graph_client.me.calendar.calendar_permissions.post(request_body)


```