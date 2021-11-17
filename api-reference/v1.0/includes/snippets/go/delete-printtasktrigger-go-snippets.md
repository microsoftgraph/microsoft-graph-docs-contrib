---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

printerId := "printer-id"
printTaskTriggerId := "printTaskTrigger-id"
graphClient.Print().PrintersById(&printerId).TaskTriggersById(&printTaskTriggerId).Delete(options)


```