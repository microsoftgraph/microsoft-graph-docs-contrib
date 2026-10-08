---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_package_resource_request import AccessPackageResourceRequest
from msgraph_beta.generated.models.access_package_resource import AccessPackageResource
from msgraph_beta.generated.models.access_package_resource_scope import AccessPackageResourceScope
from msgraph_beta.generated.models.external_origin_resource_connector import ExternalOriginResourceConnector
from msgraph_beta.generated.models.connector_type import ConnectorType
from msgraph_beta.generated.models.external_token_based_sap_iag_connection_info import ExternalTokenBasedSapIagConnectionInfo
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageResourceRequest(
	catalog_id = "bcb19bf7-cdf7-4a70-a106-f6543620b2a5",
	access_package_resource = AccessPackageResource(
		id = "88eb460d-ca08-4eb9-afae-8d60a8b00377",
		display_name = "SAP IAG Access Rights",
		description = "This resource represents the business roles of SAP IAG",
		resource_type = "Business role",
		origin_id = "https://iagintgorg-iag-intg-space-java-rest-arqapi.cfapps.sap.hana.ondemand.com",
		origin_system = "External",
		access_package_resource_scopes = [
		],
		external_origin_resource_connector = ExternalOriginResourceConnector(
			id = "1a53cea5-48bd-467c-af81-a24245b0df2b",
			display_name = "SAP IAG 10.0",
			description = "SAP IAG 10.0.0",
			connector_type = ConnectorType.SapIag,
			connection_info = ExternalTokenBasedSapIagConnectionInfo(
				odata_type = "microsoft.graph.externalTokenBasedSapIagConnectionInfo",
				url = "https://iagigorg-iag-intg-space-java-rest-arqapi.cfapps.sap.hana.ondemand.com",
				subscription_id = "8e072eb5-73f5-4ed2-9324-a734dcb9728",
				resource_group = "SAPResourceGroup",
				access_token_url = "https://entra-docu-intg-mrrd3gv.authentication.sap.hana.ondemand.com/oauth/token",
				client_id = "sb-72062308-a7ae-456f-b9a4-24302b8a4aa!b247012|iagapi-iag-intg-space!b11378",
				key_vault_name = "SAPIAG-KV",
				secret_name = "ClientSecret",
			),
		),
		access_package_resource_environment = None,
	),
	request_type = "AdminAdd",
	execute_immediately = True,
	additional_data = {
			"history" : [
			],
	}
)

result = await graph_client.identity_governance.entitlement_management.access_package_resource_requests.post(request_body)


```