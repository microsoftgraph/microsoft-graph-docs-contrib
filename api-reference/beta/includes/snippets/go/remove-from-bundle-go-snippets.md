---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

driveItemId := "driveItem-id"
driveItemId1 := "driveItem-id1"
graphClient.Drive().BundlesById(&driveItemId).ChildrenById(&driveItemId1).Delete(nil)


```