---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPCCollectionPage cloudPCs = graphClient.deviceManagement().virtualEndpoint().cloudPCs()
	.buildRequest()
	.top(2)
	.get();

```