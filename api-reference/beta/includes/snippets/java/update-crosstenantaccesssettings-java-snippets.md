---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.CrossTenantAccessSettings crossTenantAccessSettings = new com.microsoft.graph.beta.models.networkaccess.CrossTenantAccessSettings();
crossTenantAccessSettings.setOdataType("#microsoft.graph.networkaccess.crossTenantAccessSettings");
crossTenantAccessSettings.setNetworkPacketTaggingStatus(com.microsoft.graph.beta.models.networkaccess.Status.Enabled);
com.microsoft.graph.models.networkaccess.CrossTenantAccessSettings result = graphClient.networkAccess().settings().crossTenantAccess().patch(crossTenantAccessSettings);


```