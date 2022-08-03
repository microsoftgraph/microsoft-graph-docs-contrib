---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "return=representation",
	"If-Match": "W/\"JzEtVXNlckRldGFpbHMgQEBAQEBAQEBAQEBAQEBIWCc=\"",
}
configuration := &graphconfig.PlannerRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewPlannerUser()
favoritePlanReferences := graphmodels.NewPlannerFavoritePlanReferenceCollection()
additionalData := map[string]interface{}{
jd8S5gOaFk2S8aWCIAJz42QAAxtD := graphmodels.New()
"@odata.type" := "#microsoft.graph.plannerFavoritePlanReference"
jd8S5gOaFk2S8aWCIAJz42QAAxtD.Set"@odata.type"(&"@odata.type") 
orderHint := " !"
jd8S5gOaFk2S8aWCIAJz42QAAxtD.SetOrderHint(&orderHint) 
planTitle := "Next Release Discussion"
jd8S5gOaFk2S8aWCIAJz42QAAxtD.SetPlanTitle(&planTitle) 
	favoritePlanReferences.SetJd8S5gOaFk2S8aWCIAJz42QAAxtD(jd8S5gOaFk2S8aWCIAJz42QAAxtD)
	"7oTB5aMIAE2rVo-1N-L7RmQAGX2q" := null
favoritePlanReferences.Set"7oTB5aMIAE2rVo-1N-L7RmQAGX2q"(&"7oTB5aMIAE2rVo-1N-L7RmQAGX2q") 
}
favoritePlanReferences.SetAdditionalData(additionalData)
requestBody.SetFavoritePlanReferences(favoritePlanReferences)
recentPlanReferences := graphmodels.NewPlannerRecentPlanReferenceCollection()
additionalData := map[string]interface{}{
jd8S5gOaFk2S8aWCIAJz42QAAxtD := graphmodels.New()
"@odata.type" := "#microsoft.graph.plannerRecentPlanReference"
jd8S5gOaFk2S8aWCIAJz42QAAxtD.Set"@odata.type"(&"@odata.type") 
lastAccessedDateTime := "2018-01-02T22:49:46.155Z"
jd8S5gOaFk2S8aWCIAJz42QAAxtD.SetLastAccessedDateTime(&lastAccessedDateTime) 
planTitle := "Next Release Discussion"
jd8S5gOaFk2S8aWCIAJz42QAAxtD.SetPlanTitle(&planTitle) 
	recentPlanReferences.SetJd8S5gOaFk2S8aWCIAJz42QAAxtD(jd8S5gOaFk2S8aWCIAJz42QAAxtD)
}
recentPlanReferences.SetAdditionalData(additionalData)
requestBody.SetRecentPlanReferences(recentPlanReferences)

graphClient.Me().Planner().PatchWithRequestConfigurationAndResponseHandler(requestBody, configuration, nil)


```