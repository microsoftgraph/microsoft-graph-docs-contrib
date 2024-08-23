---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PrintJob result = graphClient.print().printers().byPrinterId("{printer-id}").jobs().byPrintJobId("{printJob-id}").get();


```