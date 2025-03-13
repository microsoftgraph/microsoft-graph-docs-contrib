---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PrintTaskTrigger printTaskTrigger = new PrintTaskTrigger();
printTaskTrigger.setEvent(PrintEvent.JobStarted);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("definition@odata.bind", "https://graph.microsoft.com/beta/print/taskDefinitions/3203656e-6069-4e10-8147-d25290b00a3c");
printTaskTrigger.setAdditionalData(additionalData);
PrintTaskTrigger result = graphClient.print().printers().byPrinterId("{printer-id}").taskTriggers().post(printTaskTrigger);


```