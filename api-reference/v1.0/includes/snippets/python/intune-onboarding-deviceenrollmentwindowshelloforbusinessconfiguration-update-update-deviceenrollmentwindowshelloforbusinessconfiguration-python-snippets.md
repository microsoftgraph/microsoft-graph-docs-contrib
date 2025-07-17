---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.device_enrollment_windows_hello_for_business_configuration import DeviceEnrollmentWindowsHelloForBusinessConfiguration
from msgraph.generated.models.windows_hello_for_business_pin_usage import WindowsHelloForBusinessPinUsage
from msgraph.generated.models.enablement import Enablement
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DeviceEnrollmentWindowsHelloForBusinessConfiguration(
	odata_type = "#microsoft.graph.deviceEnrollmentWindowsHelloForBusinessConfiguration",
	display_name = "Display Name value",
	description = "Description value",
	priority = 8,
	version = 7,
	pin_minimum_length = 0,
	pin_maximum_length = 0,
	pin_uppercase_characters_usage = WindowsHelloForBusinessPinUsage.Required,
	pin_lowercase_characters_usage = WindowsHelloForBusinessPinUsage.Required,
	pin_special_characters_usage = WindowsHelloForBusinessPinUsage.Required,
	state = Enablement.Enabled,
	security_device_required = True,
	unlock_with_biometrics_enabled = True,
	remote_passport_enabled = True,
	pin_previous_block_count = 5,
	pin_expiration_in_days = 3,
	enhanced_biometrics_state = Enablement.Enabled,
)

result = await graph_client.device_management.device_enrollment_configurations.by_device_enrollment_configuration_id('deviceEnrollmentConfiguration-id').patch(request_body)


```