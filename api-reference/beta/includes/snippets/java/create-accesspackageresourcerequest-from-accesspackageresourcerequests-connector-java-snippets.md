---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.setCatalogId("bcb19bf7-cdf7-4a70-a106-f6543620b2a5");
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.setId("88eb460d-ca08-4eb9-afae-8d60a8b00377");
accessPackageResource.setDisplayName("SAP IAG Access Rights");
accessPackageResource.setDescription("This resource represents the business roles of SAP IAG");
accessPackageResource.setResourceType("Business role");
accessPackageResource.setOriginId("https://iagintgorg-iag-intg-space-java-rest-arqapi.cfapps.sap.hana.ondemand.com");
accessPackageResource.setOriginSystem("External");
LinkedList<AccessPackageResourceScope> accessPackageResourceScopes = new LinkedList<AccessPackageResourceScope>();
accessPackageResource.setAccessPackageResourceScopes(accessPackageResourceScopes);
ExternalOriginResourceConnector externalOriginResourceConnector = new ExternalOriginResourceConnector();
externalOriginResourceConnector.setId("1a53cea5-48bd-467c-af81-a24245b0df2b");
externalOriginResourceConnector.setDisplayName("SAP IAG 10.0");
externalOriginResourceConnector.setDescription("SAP IAG 10.0.0");
externalOriginResourceConnector.setConnectorType(ConnectorType.SapIag);
ExternalTokenBasedSapIagConnectionInfo connectionInfo = new ExternalTokenBasedSapIagConnectionInfo();
connectionInfo.setOdataType("microsoft.graph.externalTokenBasedSapIagConnectionInfo");
connectionInfo.setUrl("https://iagigorg-iag-intg-space-java-rest-arqapi.cfapps.sap.hana.ondemand.com");
connectionInfo.setSubscriptionId("8e072eb5-73f5-4ed2-9324-a734dcb9728");
connectionInfo.setResourceGroup("SAPResourceGroup");
connectionInfo.setAccessTokenUrl("https://entra-docu-intg-mrrd3gv.authentication.sap.hana.ondemand.com/oauth/token");
connectionInfo.setClientId("sb-72062308-a7ae-456f-b9a4-24302b8a4aa!b247012|iagapi-iag-intg-space!b11378");
connectionInfo.setKeyVaultName("SAPIAG-KV");
connectionInfo.setSecretName("ClientSecret");
externalOriginResourceConnector.setConnectionInfo(connectionInfo);
accessPackageResource.setExternalOriginResourceConnector(externalOriginResourceConnector);
accessPackageResource.setAccessPackageResourceEnvironment(null);
accessPackageResourceRequest.setAccessPackageResource(accessPackageResource);
accessPackageResourceRequest.setRequestType("AdminAdd");
accessPackageResourceRequest.setExecuteImmediately(true);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> history = new LinkedList<Object>();
additionalData.put("history", history);
accessPackageResourceRequest.setAdditionalData(additionalData);
AccessPackageResourceRequest result = graphClient.identityGovernance().entitlementManagement().accessPackageResourceRequests().post(accessPackageResourceRequest);


```