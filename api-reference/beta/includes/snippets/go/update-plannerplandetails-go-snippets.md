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

configuration := &graphconfig.PlannerPlanItemDetailsRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewPlannerPlanDetails()
sharedWith := graphmodels.NewPlannerUserIds()
additionalData := map[string]interface{}{
	"6463a5ce-2119-4198-9f2a-628761df4a62" := true
sharedWith.Set"6463a5ce-2119-4198-9f2a-628761df4a62"(&"6463a5ce-2119-4198-9f2a-628761df4a62") 
	"d95e6152-f683-4d78-9ff5-67ad180fea4a" := false
sharedWith.Set"d95e6152-f683-4d78-9ff5-67ad180fea4a"(&"d95e6152-f683-4d78-9ff5-67ad180fea4a") 
}
sharedWith.SetAdditionalData(additionalData)
requestBody.SetSharedWith(sharedWith)
categoryDescriptions := graphmodels.NewPlannerCategoryDescriptions()
category1 := "Indoors"
categoryDescriptions.SetCategory1(&category1) 
category3 := null
categoryDescriptions.SetCategory3(&category3) 
requestBody.SetCategoryDescriptions(categoryDescriptions)

result, err := graphClient.Planner().Plans().ByPlanId("plannerPlan-id").Details().Patch(context.Background(), requestBody, configuration)


```