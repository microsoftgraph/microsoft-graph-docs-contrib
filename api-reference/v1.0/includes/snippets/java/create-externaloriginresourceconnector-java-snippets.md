---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExternalOriginResourceConnector externalOriginResourceConnector = new ExternalOriginResourceConnector();
externalOriginResourceConnector.setOdataType("#microsoft.graph.externalOriginResourceConnector");
externalOriginResourceConnector.setDisplayName("SAP IAG Connector");
externalOriginResourceConnector.setDescription("This connector helps integrate Microsoft Entra with SAP IAG");
externalOriginResourceConnector.setConnectorType(ConnectorType.SapIag);
ExternalTokenBasedSapIagConnectionInfo connectionInfo = new ExternalTokenBasedSapIagConnectionInfo();
connectionInfo.setOdataType("microsoft.graph.externalTokenBasedSapIagConnectionInfo");
connectionInfo.setUrl("https://contoso.example.com");
connectionInfo.setAccessTokenUrl("https://contoso.example.com/oauth/token");
connectionInfo.setClientId("e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29");
connectionInfo.setKeyVaultName("Keyvault");
connectionInfo.setSecretName("clientSecret");
connectionInfo.setSubscriptionId("5ee98b73-d9df-43a7-8a92-36855054bdee");
connectionInfo.setResourceGroup("SAP IAG Group");
externalOriginResourceConnector.setConnectionInfo(connectionInfo);
ExternalOriginResourceConnector result = graphClient.identityGovernance().entitlementManagement().externalOriginResourceConnectors().post(externalOriginResourceConnector);


```