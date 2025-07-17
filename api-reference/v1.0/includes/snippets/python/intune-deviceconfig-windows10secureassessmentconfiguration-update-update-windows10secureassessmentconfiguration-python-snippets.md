---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.windows10_secure_assessment_configuration import Windows10SecureAssessmentConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Windows10SecureAssessmentConfiguration(
	odata_type = "#microsoft.graph.windows10SecureAssessmentConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	launch_uri = "Launch Uri value",
	configuration_account = "Configuration Account value",
	allow_printing = True,
	allow_screen_capture = True,
	allow_text_suggestion = True,
)

result = await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body)


```