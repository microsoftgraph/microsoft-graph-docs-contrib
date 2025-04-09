---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.provisioningpolicies.apply_config.apply_config_post_request_body import ApplyConfigPostRequestBody
from msgraph_beta.generated.models.cloud_pc_policy_setting_type import CloudPcPolicySettingType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ApplyConfigPostRequestBody(
	cloud_pc_ids = [
		"52aa2645-36ee-47d2-9eb3-b8fbb17c3fc4",
		"ff117b6c-e3e6-41be-9cae-eb6743249a30",
	],
	policy_settings = CloudPcPolicySettingType.Region,
)

await graph_client.device_management.virtual_endpoint.provisioning_policies.apply_config.post(request_body)


```