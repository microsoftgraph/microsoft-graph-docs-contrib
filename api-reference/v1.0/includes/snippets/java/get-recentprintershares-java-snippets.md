---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Content recentPrinterShares = graphClient.me().print().recentPrinterShares()
	.buildRequest()
	.get();

```