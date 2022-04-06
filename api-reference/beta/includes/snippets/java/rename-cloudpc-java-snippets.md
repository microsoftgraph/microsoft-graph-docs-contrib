---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String displayName = "Cloud PC-HR";

graphClient.deviceManagement().virtualEndpoint().cloudPCs("c2bbb5dd-2574-451b-a508-bbaa6ac48ace")
	.rename(CloudPCRenameParameterSet
		.newBuilder()
		.withDisplayName(displayName)
		.build())
	.buildRequest()
	.post();

```