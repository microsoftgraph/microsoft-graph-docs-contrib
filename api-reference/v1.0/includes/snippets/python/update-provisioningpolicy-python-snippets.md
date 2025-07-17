---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.cloud_pc_provisioning_policy import CloudPcProvisioningPolicy
from msgraph.generated.models.microsoft_managed_desktop import MicrosoftManagedDesktop
from msgraph.generated.models.microsoft_managed_desktop_type import MicrosoftManagedDesktopType
from msgraph.generated.models.cloud_pc_provisioning_policy_autopatch import CloudPcProvisioningPolicyAutopatch
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudPcProvisioningPolicy(
	odata_type = "#microsoft.graph.cloudPcProvisioningPolicy",
	display_name = "HR provisioning policy",
	description = "Provisioning policy for India HR employees",
	microsoft_managed_desktop = MicrosoftManagedDesktop(
		managed_type = MicrosoftManagedDesktopType.StarterManaged,
		profile = None,
	),
	autopatch = CloudPcProvisioningPolicyAutopatch(
		autopatch_group_id = "91197a0b-3a74-408d-ba88-bce3fdc4e5eb",
	),
)

result = await graph_client.device_management.virtual_endpoint.provisioning_policies.by_cloud_pc_provisioning_policy_id('cloudPcProvisioningPolicy-id').patch(request_body)


```