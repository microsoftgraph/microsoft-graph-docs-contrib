---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SharedInsightCollectionPage shared = graphClient.me().insights().shared()
	.buildRequest()
	.get();

```