---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewPlannerPlanDetails()
sharedWith := msgraphsdk.NewPlannerUserIds()
requestBody.SetSharedWith(sharedWith)
sharedWith.SetAdditionalData(map[string]interface{}{
	"6463a5ce-2119-4198-9f2a-628761df4a62": true,
	"d95e6152-f683-4d78-9ff5-67ad180fea4a": false,
}
categoryDescriptions := msgraphsdk.NewPlannerCategoryDescriptions()
requestBody.SetCategoryDescriptions(categoryDescriptions)
category1 := "Indoors"
categoryDescriptions.SetCategory1(&category1)
categoryDescriptions.SetCategory3(nil)
headers := map[string]string{
	"Prefer": "return=representation"
	"If-Match": "W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=""
}
options := &msgraphsdk.DetailsRequestBuilderPatchOptions{
	Body: requestBody,
	H: headers,
}
plannerPlanId := "plannerPlan-id"
graphClient.Planner().PlansById(&plannerPlanId).Details().Patch(options)


```