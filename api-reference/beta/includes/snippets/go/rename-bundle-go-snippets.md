---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDriveItem()
name := "Shared legal agreements"
requestBody.SetName(&name) 

graphClient.Drive().ItemsById("driveItem-id").Patch(requestBody)


```