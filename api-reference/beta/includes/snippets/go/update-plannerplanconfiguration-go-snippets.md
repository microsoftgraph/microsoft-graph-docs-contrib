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


plannerPlanConfigurationLocalization := graphmodels.NewPlannerPlanConfigurationLocalization()
id := "en-us"
plannerPlanConfigurationLocalization.SetId(&id) 
languageTag := "en-us"
plannerPlanConfigurationLocalization.SetLanguageTag(&languageTag) 
planTitle := "Order Tracking"
plannerPlanConfigurationLocalization.SetPlanTitle(&planTitle) 


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
plannerPlanConfigurationLocalization.SetBuckets(buckets)
plannerPlanConfigurationLocalization1 := graphmodels.NewPlannerPlanConfigurationLocalization()
id := "es-es"
plannerPlanConfigurationLocalization1.SetId(&id) 
languageTag := "es-es"
plannerPlanConfigurationLocalization1.SetLanguageTag(&languageTag) 
planTitle := "Seguimiento de pedidos"
plannerPlanConfigurationLocalization1.SetPlanTitle(&planTitle) 


plannerPlanConfigurationBucketLocalization := graphmodels.NewPlannerPlanConfigurationBucketLocalization()
externalBucketId := "deliveryBucket"
plannerPlanConfigurationBucketLocalization.SetExternalBucketId(&externalBucketId) 
name := "Entregas"
plannerPlanConfigurationBucketLocalization.SetName(&name) 
plannerPlanConfigurationBucketLocalization1 := graphmodels.NewPlannerPlanConfigurationBucketLocalization()
externalBucketId := "storePickupBucket"
plannerPlanConfigurationBucketLocalization1.SetExternalBucketId(&externalBucketId) 
name := "Recogida"
plannerPlanConfigurationBucketLocalization1.SetName(&name) 
plannerPlanConfigurationBucketLocalization2 := graphmodels.NewPlannerPlanConfigurationBucketLocalization()
externalBucketId := "specialOrdersBucket"
plannerPlanConfigurationBucketLocalization2.SetExternalBucketId(&externalBucketId) 
name := "Pedidos especiales"
plannerPlanConfigurationBucketLocalization2.SetName(&name) 
plannerPlanConfigurationBucketLocalization3 := graphmodels.NewPlannerPlanConfigurationBucketLocalization()
externalBucketId := "specialOrdersBucket"
plannerPlanConfigurationBucketLocalization3.SetExternalBucketId(&externalBucketId) 
name := "Devoluciones de clientes"
plannerPlanConfigurationBucketLocalization3.SetName(&name) 

buckets := []graphmodels.PlannerPlanConfigurationBucketLocalizationable {
	plannerPlanConfigurationBucketLocalization,
	plannerPlanConfigurationBucketLocalization1,
	plannerPlanConfigurationBucketLocalization2,
	plannerPlanConfigurationBucketLocalization3,
}
plannerPlanConfigurationLocalization1.SetBuckets(buckets)

localizations := []graphmodels.PlannerPlanConfigurationLocalizationable {
	plannerPlanConfigurationLocalization,
	plannerPlanConfigurationLocalization1,
}
requestBody.SetLocalizations(localizations)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
planConfiguration, err := graphClient.Solutions().BusinessScenarios().ByBusinessScenarioId("businessScenario-id").Planner().PlanConfiguration().Patch(context.Background(), requestBody, nil)


```