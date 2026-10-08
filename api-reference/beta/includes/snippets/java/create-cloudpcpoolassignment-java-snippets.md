---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcAgentPoolUserAssignment cloudPcPoolAssignment = new CloudPcAgentPoolUserAssignment();
cloudPcPoolAssignment.setOdataType("#microsoft.graph.cloudPcAgentPoolUserAssignment");
cloudPcPoolAssignment.setUserPrincipalId("f6a7b8c9-d0e1-2345-f678-901234567890");
CloudPcPoolAssignment result = graphClient.deviceManagement().virtualEndpoint().cloudPcPools().byCloudPcPoolId("{cloudPcPool-id}").assignments().post(cloudPcPoolAssignment);


```