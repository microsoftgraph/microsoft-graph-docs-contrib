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

configuration := &graphplanner.PlansItemDetailsRequestBuilderPatchRequestConfiguration{
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
details, err := graphClient.Planner().Plans().ByPlannerPlanId("plannerPlan-id").Details().Patch(context.Background(), requestBody, configuration)


```