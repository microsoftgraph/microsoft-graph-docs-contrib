---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPCCollectionPage cloudPCs = graphClient.me().cloudPCs()
	.buildRequest()
	.get();

```