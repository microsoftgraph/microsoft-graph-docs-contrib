---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExternalOriginResourceConnector externalOriginResourceConnector = new ExternalOriginResourceConnector();
externalOriginResourceConnector.setOdataType("#microsoft.graph.externalOriginResourceConnector");
externalOriginResourceConnector.setDisplayName("SAP Access Control");
externalOriginResourceConnector.setDescription("SAP Access Control connector");
externalOriginResourceConnector.setConnectorType(ConnectorType.SapAc);
ExternalTokenBasedSapIagConnectionInfo connectionInfo = new ExternalTokenBasedSapIagConnectionInfo();
connectionInfo.setOdataType("microsoft.graph.externalTokenBasedSapIagConnectionInfo");
connectionInfo.setUrl("dev.test");
connectionInfo.setAccessTokenUrl("9e90019f-6256-41fa-a225-5ef9cc1d9bf8");
connectionInfo.setClientId("e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29");
connectionInfo.setKeyVaultName("Keyvault");
connectionInfo.setSecretName("Test");
connectionInfo.setSubscriptionId("5ee98b73-d9df-43a7-8a92-36855054bdee");
connectionInfo.setResourceGroup("SAPIAG Group");
externalOriginResourceConnector.setConnectionInfo(connectionInfo);
ExternalOriginResourceConnector result = graphClient.identityGovernance().entitlementManagement().externalOriginResourceConnectors().post(externalOriginResourceConnector);


```