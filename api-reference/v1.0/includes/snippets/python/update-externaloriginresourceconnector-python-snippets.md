---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.external_origin_resource_connector import ExternalOriginResourceConnector
from msgraph.generated.models.connector_type import ConnectorType
from msgraph.generated.models.external_token_based_sap_iag_connection_info import ExternalTokenBasedSapIagConnectionInfo
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExternalOriginResourceConnector(
	connector_type = ConnectorType.SapIag,
	display_name = "SAP IAG Connector 2.0",
	description = "SAP IAG Connector 2.0 description",
	connection_info = ExternalTokenBasedSapIagConnectionInfo(
		odata_type = "microsoft.graph.externalTokenBasedSapIagConnectionInfo",
		url = "https://contoso.example.com",
		key_vault_name = "Keyvault",
		subscription_id = "5ee98b73-d9df-43a7-8a92-36855054bdee",
		resource_group = "SAP IAG Group",
		access_token_url = "https://contoso.example.com/oauth/token",
		client_id = "e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29",
		secret_name = "clientSecret",
	),
)

result = await graph_client.identity_governance.entitlement_management.external_origin_resource_connectors.by_external_origin_resource_connector_id('externalOriginResourceConnector-id').patch(request_body)


```