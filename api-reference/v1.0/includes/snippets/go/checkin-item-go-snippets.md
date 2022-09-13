---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCheckinPostRequestBody()
comment := "Updating the latest guidelines"
requestBody.SetComment(&comment) 

graphClient.DrivesById("drive-id").ItemsById("driveItem-id").Checkin().Post(requestBody)


```