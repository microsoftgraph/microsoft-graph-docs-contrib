---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

NetworkAccessTrafficCollectionPage traffic = graphClient.networkAccess().logs().traffic()
	.buildRequest()
	.get();

```