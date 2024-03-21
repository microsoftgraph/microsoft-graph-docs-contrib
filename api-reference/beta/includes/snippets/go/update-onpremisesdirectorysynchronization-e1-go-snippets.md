---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

onPremisesSynchronization, err := graphClient.Directory().OnPremisesSynchronization().ByOnPremisesDirectorySynchronizationId("onPremisesDirectorySynchronization-id").Patch(context.Background(), requestBody, nil)


```