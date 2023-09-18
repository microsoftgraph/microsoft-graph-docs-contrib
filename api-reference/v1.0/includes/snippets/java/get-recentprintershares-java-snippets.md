---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrinterShareCollectionPage recentPrinterShares = graphClient.me().recentPrinterShares()
	.buildRequest()
	.get();

```