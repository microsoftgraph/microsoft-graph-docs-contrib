---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewExtension()
additionalData := map[string]interface{}{
	"theme" : "light", 
	"color" : "yellow", 
	"lang" : "Swahili", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Me().ExtensionsById("extension-id").Patch(context.Background(), requestBody, nil)


```