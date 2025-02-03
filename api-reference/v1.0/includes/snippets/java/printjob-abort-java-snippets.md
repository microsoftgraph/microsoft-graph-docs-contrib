---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.print.printers.item.jobs.item.abort.AbortPostRequestBody abortPostRequestBody = new com.microsoft.graph.print.printers.item.jobs.item.abort.AbortPostRequestBody();
abortPostRequestBody.setReason("String");
graphClient.print().printers().byPrinterId("{printer-id}").jobs().byPrintJobId("{printJob-id}").abort().post(abortPostRequestBody);


```