---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/planner"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "return=representation")
headers.Add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")

configuration := &graphconfig.PlannerTaskItemDetailsRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewPlannerTaskDetails()
previewType := graphmodels.NOPREVIEW_PLANNERPREVIEWTYPE 
requestBody.SetPreviewType(&previewType) 
references := graphmodels.NewPlannerExternalReferences()
additionalData := map[string]interface{}{
http%3A//developer%2Emicrosoft%2Ecom := graphmodels.New()
alias := "Documentation"
http%3A//developer%2Emicrosoft%2Ecom.SetAlias(&alias) 
previewPriority := " !"
http%3A//developer%2Emicrosoft%2Ecom.SetPreviewPriority(&previewPriority) 
type := "Other"
http%3A//developer%2Emicrosoft%2Ecom.SetType(&type) 
	references.SetHttp%3A//developer%2Emicrosoft%2Ecom(http%3A//developer%2Emicrosoft%2Ecom)
"https%3A//developer%2Emicrosoft%2Ecom/graph/graph-explorer" := graphmodels.New()
previewPriority := "  !!"
"https%3A//developer%2Emicrosoft%2Ecom/graph/graph-explorer".SetPreviewPriority(&previewPriority) 
	references.Set"https%3A//developer%2Emicrosoft%2Ecom/graph/graph-explorer"("https%3A//developer%2Emicrosoft%2Ecom/graph/graph-explorer")
	http%3A//www%2Ebing%2Ecom := null
references.SetHttp%3A//www%2Ebing%2Ecom(&http%3A//www%2Ebing%2Ecom) 
}
references.SetAdditionalData(additionalData)
requestBody.SetReferences(references)
checklist := graphmodels.NewPlannerChecklistItems()
additionalData := map[string]interface{}{
"95e27074-6c4a-447a-aa24-9d718a0b86fa" := graphmodels.New()
title := "Update task details"
"95e27074-6c4a-447a-aa24-9d718a0b86fa".SetTitle(&title) 
	isChecked := true
"95e27074-6c4a-447a-aa24-9d718a0b86fa".SetIsChecked(&isChecked) 
	checklist.Set"95e27074-6c4a-447a-aa24-9d718a0b86fa"("95e27074-6c4a-447a-aa24-9d718a0b86fa")
"d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff" := graphmodels.New()
	isChecked := true
"d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff".SetIsChecked(&isChecked) 
	checklist.Set"d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff"("d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff")
	"a93c93c5-10a6-4167-9551-8bafa09967a7" := null
checklist.Set"a93c93c5-10a6-4167-9551-8bafa09967a7"(&"a93c93c5-10a6-4167-9551-8bafa09967a7") 
}
checklist.SetAdditionalData(additionalData)
requestBody.SetChecklist(checklist)
description := "Updated task details properties:\nUpdated checklist:Sub items\nUpdated references:Related links"
requestBody.SetDescription(&description) 

result, err := graphClient.Planner().Tasks().ByTaskId("plannerTask-id").Details().Patch(context.Background(), requestBody, configuration)


```