---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.templates.devicetemplates.item.create_device_from_template.create_device_from_template_post_request_body import CreateDeviceFromTemplatePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CreateDeviceFromTemplatePostRequestBody(
	external_device_id = "2fa9424e-7ab0-4a22-8c90-2a20d15d8183",
	operating_system_version = "Ubuntu 18.04",
	external_source_name = "unknown",
	account_enabled = False,
	alternative_names = [
		"/subscriptions/00001111-aaaa-2222-bbbb-3333cccc4444/resourcegroups/testrg/providers/microsoft.deviceregistry/assets/asset1",
	],
)

result = await graph_client.templates.device_templates.by_device_template_id('deviceTemplate-id').create_device_from_template.post(request_body)


```