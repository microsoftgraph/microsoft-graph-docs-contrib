---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExternalOriginResourceConnector externalOriginResourceConnector = new ExternalOriginResourceConnector();
externalOriginResourceConnector.setId("d743fe46-80f8-41b1-a2ee-7796e024edb9");
externalOriginResourceConnector.setConnectorType(ConnectorType.SapIag);
externalOriginResourceConnector.setDisplayName("SAP IAG 5.0");
externalOriginResourceConnector.setDescription("SAP IAG 5.0.0.0.0");
ConnectionInfo connectionInfo = new ConnectionInfo();
connectionInfo.setOdataType("Microsoft.IGAELM.EC.FrontEnd.ExternalModel.externalTokenBasedSapIagConnectionInfo");
connectionInfo.setUrl("https://IAGINTGORG-iag-intg-space-java-rest-arqapi.cfps.sap.hana.ondemand.com");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("keyVaultName", "sap-key-vault");
additionalData.put("subscriptionId", "caa5v042-9c76-44de-9e84-f3e3071a7b4e");
additionalData.put("resourceGroup", "test-rg");
additionalData.put("accessTokenUrl", "https://entra-intg-l4nds6yn.authentication.sap.hana.ondemand.com/oauth/token");
additionalData.put("clientId", "sb-8d896b-72b5-46ce-9273-471874a09137!b133623|iagapi-iag-intg-space!b11378");
additionalData.put("secretName", "clienecret");
connectionInfo.setAdditionalData(additionalData);
externalOriginResourceConnector.setConnectionInfo(connectionInfo);
ExternalOriginResourceConnector result = graphClient.identityGovernance().entitlementManagement().externalOriginResourceConnectors().byExternalOriginResourceConnectorId("{externalOriginResourceConnector-id}").patch(externalOriginResourceConnector);


```