---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

graphClient.print().printerShares().byPrinterShareId("{printerShare-id}").allowedUsers().byUserId("{user-id}").ref().delete();


```