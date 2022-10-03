---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewGroup()
description := "Contoso Life v2.0"
requestBody.SetDescription(&description) 
displayName := "Contoso Life Renewed"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.GroupsById("group-id").Patch(context.Background(), requestBody, nil)


```