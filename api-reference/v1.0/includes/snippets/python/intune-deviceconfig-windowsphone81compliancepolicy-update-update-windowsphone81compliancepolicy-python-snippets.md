---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.windows_phone81_compliance_policy import WindowsPhone81CompliancePolicy
from msgraph.generated.models.required_password_type import RequiredPasswordType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WindowsPhone81CompliancePolicy(
	odata_type = "#microsoft.graph.windowsPhone81CompliancePolicy",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	password_block_simple = True,
	password_expiration_days = 6,
	password_minimum_length = 5,
	password_minutes_of_inactivity_before_lock = 5,
	password_minimum_character_set_count = 0,
	password_required_type = RequiredPasswordType.Alphanumeric,
	password_previous_password_block_count = 2,
	password_required = True,
	os_minimum_version = "Os Minimum Version value",
	os_maximum_version = "Os Maximum Version value",
	storage_require_encryption = True,
)

result = await graph_client.device_management.device_compliance_policies.by_device_compliance_policy_id('deviceCompliancePolicy-id').patch(request_body)


```