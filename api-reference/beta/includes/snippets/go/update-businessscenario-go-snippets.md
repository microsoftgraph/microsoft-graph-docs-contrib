---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewBusinessScenario()
ownerAppIds := []string {
	"44109254-4b2b-7a33-76ee-c890a167b295",
	"13eb9d8b-1d63-4153-9417-3a69ab200a78",

}
requestBody.SetOwnerAppIds(ownerAppIds)

result, err := graphClient.Solutions().BusinessScenariosById("businessScenario-id").Patch(context.Background(), requestBody, nil)


```