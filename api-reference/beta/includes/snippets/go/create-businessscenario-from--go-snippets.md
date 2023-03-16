---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewBusinessScenario()
displayName := "Contoso Order Tracking"
requestBody.SetDisplayName(&displayName) 
uniqueName := "com.contoso.apps.ordertracking"
requestBody.SetUniqueName(&uniqueName) 

result, err := graphClient.Solutions().BusinessScenarios().Post(context.Background(), requestBody, nil)


```