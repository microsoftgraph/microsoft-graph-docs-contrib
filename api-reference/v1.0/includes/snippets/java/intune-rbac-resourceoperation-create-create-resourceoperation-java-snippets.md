---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ResourceOperation resourceOperation = new ResourceOperation();
resourceOperation.resourceName = "Resource Name value";
resourceOperation.actionName = "Action Name value";
resourceOperation.description = "Description value";

graphClient.deviceManagement().resourceOperations()
	.buildRequest()
	.post(resourceOperation);

```