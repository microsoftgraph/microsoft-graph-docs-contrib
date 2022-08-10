---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "return=representation",
	"If-Match": "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}
configuration := &graphconfig.DetailsRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewPlannerTaskDetails()
previewType := graphmodels.NOPREVIEW_PLANNERPREVIEWTYPE 
requestBody.SetPreviewType(&previewType) 
references := graphmodels.NewPlannerExternalReferences()
additionalData := map[string]interface{}{
http%3A//developer%2Emicrosoft%2Ecom := graphmodels.New()
"@odata.type" := "microsoft.graph.plannerExternalReference"
http%3A//developer%2Emicrosoft%2Ecom.Set"@odata.type"(&"@odata.type") 
alias := "Documentation"
http%3A//developer%2Emicrosoft%2Ecom.SetAlias(&alias) 
previewPriority := " !"
http%3A//developer%2Emicrosoft%2Ecom.SetPreviewPriority(&previewPriority) 
type := "Other"
http%3A//developer%2Emicrosoft%2Ecom.SetType(&type) 
	references.SetHttp%3A//developer%2Emicrosoft%2Ecom(http%3A//developer%2Emicrosoft%2Ecom)
"https%3A//developer%2Emicrosoft%2Ecom/en-us/graph/graph-explorer" := graphmodels.New()
"@odata.type" := "microsoft.graph.plannerExternalReference"
"https%3A//developer%2Emicrosoft%2Ecom/en-us/graph/graph-explorer".Set"@odata.type"(&"@odata.type") 
previewPriority := "  !!"
"https%3A//developer%2Emicrosoft%2Ecom/en-us/graph/graph-explorer".SetPreviewPriority(&previewPriority) 
	references.Set"https%3A//developer%2Emicrosoft%2Ecom/en-us/graph/graph-explorer"("https%3A//developer%2Emicrosoft%2Ecom/en-us/graph/graph-explorer")
	http%3A//www%2Ebing%2Ecom := null
references.SetHttp%3A//www%2Ebing%2Ecom(&http%3A//www%2Ebing%2Ecom) 
}
references.SetAdditionalData(additionalData)
requestBody.SetReferences(references)
checklist := graphmodels.NewPlannerChecklistItems()
additionalData := map[string]interface{}{
"95e27074-6c4a-447a-aa24-9d718a0b86fa" := graphmodels.New()
"@odata.type" := "microsoft.graph.plannerChecklistItem"
"95e27074-6c4a-447a-aa24-9d718a0b86fa".Set"@odata.type"(&"@odata.type") 
title := "Update task details"
"95e27074-6c4a-447a-aa24-9d718a0b86fa".SetTitle(&title) 
	isChecked := true
"95e27074-6c4a-447a-aa24-9d718a0b86fa".SetIsChecked(&isChecked) 
	checklist.Set"95e27074-6c4a-447a-aa24-9d718a0b86fa"("95e27074-6c4a-447a-aa24-9d718a0b86fa")
"d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff" := graphmodels.New()
"@odata.type" := "microsoft.graph.plannerChecklistItem"
"d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff".Set"@odata.type"(&"@odata.type") 
	isChecked := true
"d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff".SetIsChecked(&isChecked) 
	checklist.Set"d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff"("d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff")
	"a93c93c5-10a6-4167-9551-8bafa09967a7" := null
checklist.Set"a93c93c5-10a6-4167-9551-8bafa09967a7"(&"a93c93c5-10a6-4167-9551-8bafa09967a7") 
}
checklist.SetAdditionalData(additionalData)
requestBody.SetChecklist(checklist)

graphClient.Planner().TasksById("plannerTask-id").Details().PatchWithRequestConfigurationAndResponseHandler(requestBody, configuration, nil)


```