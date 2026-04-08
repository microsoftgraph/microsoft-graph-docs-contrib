---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.external_origin_resource_connector import ExternalOriginResourceConnector
from msgraph_beta.generated.models.connector_type import ConnectorType
from msgraph_beta.generated.models.connection_info import ConnectionInfo
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExternalOriginResourceConnector(
	id = "d743fe46-80f8-41b1-a2ee-7796e024edb9",
	connector_type = ConnectorType.SapIag,
	display_name = "SAP IAG 5.0",
	description = "SAP IAG 5.0.0.0.0",
	connection_info = ConnectionInfo(
		odata_type = "Microsoft.IGAELM.EC.FrontEnd.ExternalModel.externalTokenBasedSapIagConnectionInfo",
		url = "https://IAGINTGORG-iag-intg-space-java-rest-arqapi.cfps.sap.hana.ondemand.com",
		additional_data = {
				"key_vault_name" : "sap-key-vault",
				"subscription_id" : "caa5v042-9c76-44de-9e84-f3e3071a7b4e",
				"resource_group" : "test-rg",
				"access_token_url" : "https://entra-intg-l4nds6yn.authentication.sap.hana.ondemand.com/oauth/token",
				"client_id" : "sb-8d896b-72b5-46ce-9273-471874a09137!b133623|iagapi-iag-intg-space!b11378",
				"secret_name" : "clienecret",
		}
	),
)

result = await graph_client.identity_governance.entitlement_management.external_origin_resource_connectors.by_external_origin_resource_connector_id('externalOriginResourceConnector-id').patch(request_body)


```