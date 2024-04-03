---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.apply_config_post_request_body import ApplyConfigPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ApplyConfigPostRequestBody(
	cloud_pc_ids = [
		"52aa2645-36ee-47d2-9eb3-b8fbb17c3fc4",
		"ff117b6c-e3e6-41be-9cae-eb6743249a30",
	],
	policy_settings = CloudPcPolicySettingType.Region,
)

await graph_client.device_management.virtual_endpoint.provisioning_policies.apply_config.post(request_body)


```