---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PrinterShare result = graphClient.print().shares().byPrinterShareId("{printerShare-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"id", "displayName", "capabilities"};
});


```