---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.one_drive_for_business_protection_policy import OneDriveForBusinessProtectionPolicy
from msgraph.generated.models.drive_protection_unit import DriveProtectionUnit
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OneDriveForBusinessProtectionPolicy(
	display_name = "OneDrive For Business Protection Policy",
	drive_protection_units = [
		DriveProtectionUnit(
			directory_object_id = "cdd3a849-dcaf-4a85-af82-7e39fc14019",
		),
		DriveProtectionUnit(
			directory_object_id = "9bc069da-b746-41a4-89ab-26125c6373c7",
		),
		DriveProtectionUnit(
			directory_object_id = "b218eb4a-ea72-42bd-8f0b-d0bbf794bec7",
		),
	],
)

result = await graph_client.solutions.backup_restore.one_drive_for_business_protection_policies.post(request_body)


```