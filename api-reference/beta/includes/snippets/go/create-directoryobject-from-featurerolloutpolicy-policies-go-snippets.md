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


requestBody := graphmodels.NewReferenceCreate()
odataId := " https://graph.microsoft.com/beta/directoryObjects/2441b489-4f12-4882-b039-8f6006bd66da"
requestBody.SetOdataId(&odataId) 

graphClient.Policies().FeatureRolloutPolicies().ByFeatureRolloutPolicieId("featureRolloutPolicy-id").AppliesTo().Ref().Post(context.Background(), requestBody, nil)


```