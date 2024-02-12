---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ResourceOperation resourceOperation = new ResourceOperation();
resourceOperation.setOdataType("#microsoft.graph.resourceOperation");
resourceOperation.setResourceName("Resource Name value");
resourceOperation.setActionName("Action Name value");
resourceOperation.setDescription("Description value");
ResourceOperation result = graphClient.deviceManagement().resourceOperations().byResourceOperationId("{resourceOperation-id}").patch(resourceOperation);


```