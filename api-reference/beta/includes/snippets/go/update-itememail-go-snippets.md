---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewItemEmail()
displayName := "Business Email"
requestBody.SetDisplayName(&displayName) 
type := graphmodels.WORK_EMAILTYPE 
requestBody.SetType(&type) 

graphClient.UsersById("user-id").Profile().EmailsById("itemEmail-id").Patch(requestBody)


```