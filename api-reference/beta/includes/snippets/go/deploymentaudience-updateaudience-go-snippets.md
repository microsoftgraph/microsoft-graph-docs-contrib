---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUpdateAudiencePostRequestBody()


 := graphmodels.New()
additionalData := map[string]interface{}{
	"@odata.type" : "#microsoft.graph.windowsUpdates.azureADDevice", 
	"id" : "String (identifier)", 
}
.SetAdditionalData(additionalData)

addMembers := []graphmodels.Objectable {
	,

}
requestBody.SetAddMembers(addMembers)


 := graphmodels.New()
additionalData := map[string]interface{}{
	"@odata.type" : "#microsoft.graph.windowsUpdates.azureADDevice", 
	"id" : "String (identifier)", 
}
.SetAdditionalData(additionalData)

removeMembers := []graphmodels.Objectable {
	,

}
requestBody.SetRemoveMembers(removeMembers)


 := graphmodels.New()
additionalData := map[string]interface{}{
	"@odata.type" : "#microsoft.graph.windowsUpdates.azureADDevice", 
	"id" : "String (identifier)", 
}
.SetAdditionalData(additionalData)

addExclusions := []graphmodels.Objectable {
	,

}
requestBody.SetAddExclusions(addExclusions)


 := graphmodels.New()
additionalData := map[string]interface{}{
	"@odata.type" : "#microsoft.graph.windowsUpdates.azureADDevice", 
	"id" : "String (identifier)", 
}
.SetAdditionalData(additionalData)

removeExclusions := []graphmodels.Objectable {
	,

}
requestBody.SetRemoveExclusions(removeExclusions)

graphClient.Admin().Windows().Updates().DeploymentsById("deployment-id").Audience().UpdateAudience(deployment-id).Post(requestBody)


```