---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PrintTask printTask = new PrintTask();
PrintTaskStatus status = new PrintTaskStatus();
status.setState(PrintTaskProcessingState.Completed);
status.setDescription("completed");
printTask.setStatus(status);
PrintTask result = graphClient.print().taskDefinitions().byPrintTaskDefinitionId("{printTaskDefinition-id}").tasks().byPrintTaskId("{printTask-id}").patch(printTask);


```