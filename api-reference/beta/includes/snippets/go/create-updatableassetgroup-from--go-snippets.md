---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewUpdatableAsset()

result, err := graphClient.Admin().Windows().Updates().UpdatableAssets().Post(context.Background(), requestBody, nil)


```