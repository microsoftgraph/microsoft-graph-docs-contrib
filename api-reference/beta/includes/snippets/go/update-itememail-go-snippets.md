---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewItemEmail()
displayName := "Business Email"
requestBody.SetDisplayName(&displayName) 
type := graphmodels.WORK_EMAILTYPE 
requestBody.SetType(&type) 

result, err := graphClient.UsersById("user-id").Profile().EmailsById("itemEmail-id").Patch(context.Background(), requestBody, nil)


```