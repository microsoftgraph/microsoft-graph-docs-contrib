---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.custom_access_package_workflow_extension import CustomAccessPackageWorkflowExtension
from msgraph.generated.models.logic_app_trigger_endpoint_configuration import LogicAppTriggerEndpointConfiguration
from msgraph.generated.models.azure_ad_token_authentication import AzureAdTokenAuthentication

graph_client = GraphServiceClient(credentials, scopes)

request_body = CustomAccessPackageWorkflowExtension(
	display_name = "test_action_0124",
	description = "this is for graph testing only",
	endpoint_configuration = LogicAppTriggerEndpointConfiguration(
		odata_type = "#microsoft.graph.logicAppTriggerEndpointConfiguration",
		subscription_id = "38ab2ccc-3747-4567-b36b-9478f5602f0d",
		resource_group_name = "EMLogicApp",
		logic_app_workflow_name = "customextension_test",
	),
	authentication_configuration = AzureAdTokenAuthentication(
		odata_type = "#microsoft.graph.azureAdTokenAuthentication",
		resource_id = "f604bd15-f785-4309-ad7c-6fad18ddb6cb",
	),
)

result = await graph_client.identity_governance.entitlement_management.access_package_catalogs.by_access_package_catalog_id('accessPackageCatalog-id').custom_access_package_workflow_extensions.post(request_body)


```