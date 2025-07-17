---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  graphplanner "github.com/microsoftgraph/msgraph-sdk-go/planner"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "return=representation")
headers.Add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")

configuration := &graphplanner.TasksItemDetailsRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewPlannerTaskDetails()
previewType := graphmodels.NOPREVIEW_PLANNERPREVIEWTYPE 
requestBody.SetPreviewType(&previewType) 
references := graphmodels.NewPlannerExternalReferences()
additionalData := map[string]interface{}{
http%3A//developer%2Emicrosoft%2Ecom := graphmodels.NewPlannerExternalReference()
alias := "Documentation"
http%3A//developer%2Emicrosoft%2Ecom.SetAlias(&alias) 
previewPriority := " !"
http%3A//developer%2Emicrosoft%2Ecom.SetPreviewPriority(&previewPriority) 
type := "Other"
http%3A//developer%2Emicrosoft%2Ecom.SetType(&type) 
	references.SetHttp%3A//developer%2Emicrosoft%2Ecom(http%3A//developer%2Emicrosoft%2Ecom)
"https%3A//developer%2Emicrosoft%2Ecom/en-us/graph/graph-explorer" := graphmodels.NewPlannerExternalReference()
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
"95e27074-6c4a-447a-aa24-9d718a0b86fa" := graphmodels.NewPlannerChecklistItem()
title := "Update task details"
"95e27074-6c4a-447a-aa24-9d718a0b86fa".SetTitle(&title) 
	isChecked := true
"95e27074-6c4a-447a-aa24-9d718a0b86fa".SetIsChecked(&isChecked) 
	checklist.Set"95e27074-6c4a-447a-aa24-9d718a0b86fa"("95e27074-6c4a-447a-aa24-9d718a0b86fa")
"d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff" := graphmodels.NewPlannerChecklistItem()
	isChecked := true
"d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff".SetIsChecked(&isChecked) 
	checklist.Set"d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff"("d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff")
	"a93c93c5-10a6-4167-9551-8bafa09967a7" := null
checklist.Set"a93c93c5-10a6-4167-9551-8bafa09967a7"(&"a93c93c5-10a6-4167-9551-8bafa09967a7") 
}
checklist.SetAdditionalData(additionalData)
requestBody.SetChecklist(checklist)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
details, err := graphClient.Planner().Tasks().ByPlannerTaskId("plannerTask-id").Details().Patch(context.Background(), requestBody, configuration)


```