---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewOnPremisesDirectorySynchronization()
configuration := graphmodels.NewOnPremisesDirectorySynchronizationConfiguration()
accidentalDeletionPrevention := graphmodels.NewOnPremisesAccidentalDeletionPrevention()
synchronizationPreventionType := graphmodels.ENABLEDFORCOUNT_ONPREMISESDIRECTORYSYNCHRONIZATIONDELETIONPREVENTIONTYPE 
accidentalDeletionPrevention.SetSynchronizationPreventionType(&synchronizationPreventionType) 
alertThreshold := int32(500)
accidentalDeletionPrevention.SetAlertThreshold(&alertThreshold) 
configuration.SetAccidentalDeletionPrevention(accidentalDeletionPrevention)
synchronizationInterval , err := abstractions.ParseISODuration("PT30M")
configuration.SetSynchronizationInterval(&synchronizationInterval) 
customerRequestedSynchronizationInterval , err := abstractions.ParseISODuration("PT1H")
configuration.SetCustomerRequestedSynchronizationInterval(&customerRequestedSynchronizationInterval) 
requestBody.SetConfiguration(configuration)
features := graphmodels.NewOnPremisesDirectorySynchronizationFeature()
groupWriteBackEnabled := true
features.SetGroupWriteBackEnabled(&groupWriteBackEnabled) 
requestBody.SetFeatures(features)

result, err := graphClient.Directory().OnPremisesSynchronizationById("onPremisesDirectorySynchronization-id").Patch(context.Background(), requestBody, nil)


```