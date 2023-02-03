---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SubscribedSku subscribedSku = graphClient.subscribedSkus("dcd219dd-bc68-4b9b-bf0b-4a33a796be35_c7df2760-2c81-4ef7-b578-5b5392b571df")
	.buildRequest()
	.get();

```