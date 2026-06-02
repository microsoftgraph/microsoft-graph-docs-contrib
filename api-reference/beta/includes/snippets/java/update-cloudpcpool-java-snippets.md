---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcAgentPool cloudPcPool = new CloudPcAgentPool();
cloudPcPool.setOdataType("#microsoft.graph.cloudPcAgentPool");
cloudPcPool.setDisplayName("Contoso Development Pool Updated");
cloudPcPool.setDescription("Contoso Development Pool Description Updated");
CloudPcPool result = graphClient.deviceManagement().virtualEndpoint().cloudPcPools().byCloudPcPoolId("{cloudPcPool-id}").patch(cloudPcPool);


```