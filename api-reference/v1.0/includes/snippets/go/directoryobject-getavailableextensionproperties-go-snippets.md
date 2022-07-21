---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewGetAvailableExtensionPropertiesPostRequestBody()
isSyncedFromOnPremises := true
requestBody.SetIsSyncedFromOnPremises(&isSyncedFromOnPremises) 

result, err := graphClient.DirectoryObjects().GetAvailableExtensionProperties().Post(requestBody)


```