---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewPlannerUser()
favoritePlanReferences := msgraphsdk.NewPlannerFavoritePlanReferenceCollection()
requestBody.SetFavoritePlanReferences(favoritePlanReferences)
favoritePlanReferences.SetAdditionalData(map[string]interface{}{
	"7oTB5aMIAE2rVo-1N-L7RmQAGX2q": nil,
}
recentPlanReferences := msgraphsdk.NewPlannerRecentPlanReferenceCollection()
requestBody.SetRecentPlanReferences(recentPlanReferences)
recentPlanReferences.SetAdditionalData(map[string]interface{}{
}
headers := map[string]string{
	"Prefer": "return=representation"
	"If-Match": "W/"JzEtVXNlckRldGFpbHMgQEBAQEBAQEBAQEBAQEBIWCc=""
}
options := &msgraphsdk.PlannerRequestBuilderPatchOptions{
	Body: requestBody,
	H: headers,
}
graphClient.Me().Planner().Patch(options)


```