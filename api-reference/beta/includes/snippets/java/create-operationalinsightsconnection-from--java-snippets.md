---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.windowsupdates.OperationalInsightsConnection resourceConnection = new com.microsoft.graph.beta.models.windowsupdates.OperationalInsightsConnection();
resourceConnection.setOdataType("#microsoft.graph.windowsUpdates.operationalInsightsConnection");
resourceConnection.setAzureSubscriptionId("322ec614-e9c2-4cd5-a55c-5711fdecf02e");
resourceConnection.setAzureResourceGroupName("target-resource-group");
resourceConnection.setWorkspaceName("my-workspace");
com.microsoft.graph.models.windowsupdates.ResourceConnection result = graphClient.admin().windows().updates().resourceConnections().post(resourceConnection);


```