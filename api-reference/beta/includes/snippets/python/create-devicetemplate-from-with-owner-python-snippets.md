---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.device_template import DeviceTemplate
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DeviceTemplate(
	mutual_tls_oauth_configuration_id = "00001111-aaaa-2222-bbbb-3333cccc4444",
	mutual_tls_oauth_configuration_tenant_id = "00001111-aaaa-2222-bbbb-3333cccc4445",
	device_authority = "Lakeshore Retail",
	manufacturer = "Tailwind Traders",
	model = "DeepFreezerModelAB",
	operating_system = "WindowsIoT",
	additional_data = {
			"owners@odata_bind" : [
				"https://graph.microsoft.com/beta/users/aaaaaaaa-bbbb-cccc-1111-222222222222",
			],
	}
)

result = await graph_client.directory.templates.device_templates.post(request_body)


```