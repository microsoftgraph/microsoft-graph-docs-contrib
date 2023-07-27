---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTermsAndConditionsAssignment()
target := graphmodels.NewConfigurationManagerCollectionAssignmentTarget()
collectionId := "Collection Id value"
target.SetCollectionId(&collectionId) 
requestBody.SetTarget(target)

result, err := graphClient.DeviceManagement().TermsAndConditions().ByTermsAndConditionId("termsAndConditions-id").Assignments().Post(context.Background(), requestBody, nil)


```