---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewPlannerPlanConfiguration()
defaultLanguage := "en-us"
requestBody.SetDefaultLanguage(&defaultLanguage) 


plannerPlanConfigurationBucketDefinition := graphmodels.NewPlannerPlanConfigurationBucketDefinition()
externalBucketId := "deliveryBucket"
plannerPlanConfigurationBucketDefinition.SetExternalBucketId(&externalBucketId) 
plannerPlanConfigurationBucketDefinition1 := graphmodels.NewPlannerPlanConfigurationBucketDefinition()
externalBucketId := "storePickupBucket"
plannerPlanConfigurationBucketDefinition1.SetExternalBucketId(&externalBucketId) 
plannerPlanConfigurationBucketDefinition2 := graphmodels.NewPlannerPlanConfigurationBucketDefinition()
externalBucketId := "specialOrdersBucket"
plannerPlanConfigurationBucketDefinition2.SetExternalBucketId(&externalBucketId) 
plannerPlanConfigurationBucketDefinition3 := graphmodels.NewPlannerPlanConfigurationBucketDefinition()
externalBucketId := "returnProcessingBucket"
plannerPlanConfigurationBucketDefinition3.SetExternalBucketId(&externalBucketId) 

buckets := []graphmodels.PlannerPlanConfigurationBucketDefinitionable {
	plannerPlanConfigurationBucketDefinition,
	plannerPlanConfigurationBucketDefinition1,
	plannerPlanConfigurationBucketDefinition2,
	plannerPlanConfigurationBucketDefinition3,
}
requestBody.SetBuckets(buckets)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
planConfiguration, err := graphClient.Solutions().BusinessScenarios().ByBusinessScenarioId("businessScenario-id").Planner().PlanConfiguration().Patch(context.Background(), requestBody, nil)


```