---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPlannerPlanConfigurationLocalization()
languageTag := "en-us"
requestBody.SetLanguageTag(&languageTag) 
planTitle := "Order Tracking"
requestBody.SetPlanTitle(&planTitle) 


plannerPlanConfigurationBucketLocalization := graphmodels.NewPlannerPlanConfigurationBucketLocalization()
externalBucketId := "deliveryBucket"
plannerPlanConfigurationBucketLocalization.SetExternalBucketId(&externalBucketId) 
name := "Deliveries"
plannerPlanConfigurationBucketLocalization.SetName(&name) 
plannerPlanConfigurationBucketLocalization1 := graphmodels.NewPlannerPlanConfigurationBucketLocalization()
externalBucketId := "storePickupBucket"
plannerPlanConfigurationBucketLocalization1.SetExternalBucketId(&externalBucketId) 
name := "Pickup"
plannerPlanConfigurationBucketLocalization1.SetName(&name) 
plannerPlanConfigurationBucketLocalization2 := graphmodels.NewPlannerPlanConfigurationBucketLocalization()
externalBucketId := "specialOrdersBucket"
plannerPlanConfigurationBucketLocalization2.SetExternalBucketId(&externalBucketId) 
name := "Special Orders"
plannerPlanConfigurationBucketLocalization2.SetName(&name) 
plannerPlanConfigurationBucketLocalization3 := graphmodels.NewPlannerPlanConfigurationBucketLocalization()
externalBucketId := "returnProcessingBucket"
plannerPlanConfigurationBucketLocalization3.SetExternalBucketId(&externalBucketId) 
name := "Customer Returns"
plannerPlanConfigurationBucketLocalization3.SetName(&name) 

buckets := []graphmodels.PlannerPlanConfigurationBucketLocalizationable {
	plannerPlanConfigurationBucketLocalization,
	plannerPlanConfigurationBucketLocalization1,
	plannerPlanConfigurationBucketLocalization2,
	plannerPlanConfigurationBucketLocalization3,

}
requestBody.SetBuckets(buckets)

result, err := graphClient.Solutions().BusinessScenarios().ByBusinessScenarioId("businessScenario-id").Planner().PlanConfiguration().Localizations().Post(context.Background(), requestBody, nil)


```