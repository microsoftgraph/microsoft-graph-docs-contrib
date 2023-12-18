---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CloudPcProvisioningPolicy(
	odata_type = "#microsoft.graph.cloudPcProvisioningPolicy",
	description = "Description value",
	display_name = "Display Name value",
	domain_join_configuration = CloudPcDomainJoinConfiguration(
		on_premises_connection_id = "16ee6c71-fc10-438b-88ac-daa1ccafffff",
		additional_data = {
				"domain_join_type" : "hybridAzureADJoin",
		}
	),
	domain_join_configurations = [
		CloudPcDomainJoinConfiguration(
			on_premises_connection_id = "16ee6c71-fc10-438b-88ac-daa1ccafffff",
			type = CloudPcDomainJoinType.HybridAzureADJoin,
		),
		CloudPcDomainJoinConfiguration(
			on_premises_connection_id = "26e16c71-f210-438b-88ac-d481ccafffff",
			type = CloudPcDomainJoinType.HybridAzureADJoin,
		),
	],
	id = "1d164206-bf41-4fd2-8424-a3192d39ffff",
	enable_single_sign_on = True,
	image_display_name = "Windows-10 19h1-evd",
	image_id = "MicrosoftWindowsDesktop_Windows-10_19h1-evd",
	image_type = CloudPcProvisioningPolicyImageType.Gallery,
	on_premises_connection_id = "4e47d0f6-6f77-44f0-8893-c0fe1701ffff",
	windows_settings = CloudPcWindowsSettings(
		language = "en-US",
	),
	provisioning_type = CloudPcProvisioningType.Dedicated,
)

result = await graph_client.device_management.virtual_endpoint.provisioning_policies.post(request_body)


```