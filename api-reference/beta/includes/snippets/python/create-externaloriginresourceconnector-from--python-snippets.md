---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.external_origin_resource_connector import ExternalOriginResourceConnector
from msgraph_beta.generated.models.connector_type import ConnectorType
from msgraph_beta.generated.models.external_token_based_sap_iag_connection_info import ExternalTokenBasedSapIagConnectionInfo
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExternalOriginResourceConnector(
	odata_type = "#microsoft.graph.externalOriginResourceConnector",
	display_name = "SAP Access Control",
	description = "SAP Access Control connector",
	connector_type = ConnectorType.SapAc,
	connection_info = ExternalTokenBasedSapIagConnectionInfo(
		odata_type = "microsoft.graph.externalTokenBasedSapIagConnectionInfo",
		url = "dev.test",
		access_token_url = "9e90019f-6256-41fa-a225-5ef9cc1d9bf8",
		client_id = "e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29",
		key_vault_name = "Keyvault",
		secret_name = "Test",
		subscription_id = "5ee98b73-d9df-43a7-8a92-36855054bdee",
		resource_group = "SAPIAG Group",
	),
)

result = await graph_client.identity_governance.entitlement_management.external_origin_resource_connectors.post(request_body)


```