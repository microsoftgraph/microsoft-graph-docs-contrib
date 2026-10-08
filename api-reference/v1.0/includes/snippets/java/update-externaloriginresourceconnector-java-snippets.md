---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExternalOriginResourceConnector externalOriginResourceConnector = new ExternalOriginResourceConnector();
externalOriginResourceConnector.setConnectorType(ConnectorType.SapIag);
externalOriginResourceConnector.setDisplayName("SAP IAG Connector 2.0");
externalOriginResourceConnector.setDescription("SAP IAG Connector 2.0 description");
ExternalTokenBasedSapIagConnectionInfo connectionInfo = new ExternalTokenBasedSapIagConnectionInfo();
connectionInfo.setOdataType("microsoft.graph.externalTokenBasedSapIagConnectionInfo");
connectionInfo.setUrl("https://contoso.example.com");
connectionInfo.setKeyVaultName("Keyvault");
connectionInfo.setSubscriptionId("5ee98b73-d9df-43a7-8a92-36855054bdee");
connectionInfo.setResourceGroup("SAP IAG Group");
connectionInfo.setAccessTokenUrl("https://contoso.example.com/oauth/token");
connectionInfo.setClientId("e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29");
connectionInfo.setSecretName("clientSecret");
externalOriginResourceConnector.setConnectionInfo(connectionInfo);
ExternalOriginResourceConnector result = graphClient.identityGovernance().entitlementManagement().externalOriginResourceConnectors().byExternalOriginResourceConnectorId("{externalOriginResourceConnector-id}").patch(externalOriginResourceConnector);


```