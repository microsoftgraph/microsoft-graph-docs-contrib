---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"keys":  []Object {
	}
}
trustFrameworkKeySetId := "trustFrameworkKeySet-id"
graphClient.TrustFramework().KeySetsById(&trustFrameworkKeySetId).Put(requestBody)


```