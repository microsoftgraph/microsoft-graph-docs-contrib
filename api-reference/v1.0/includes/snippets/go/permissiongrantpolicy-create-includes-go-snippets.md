---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPermissionGrantConditionSet()
permissionType := graphmodels.DELEGATED_PERMISSIONTYPE 
requestBody.SetPermissionType(&permissionType) 
clientApplicationsFromVerifiedPublisherOnly := true
requestBody.SetClientApplicationsFromVerifiedPublisherOnly(&clientApplicationsFromVerifiedPublisherOnly) 

result, err := graphClient.Policies().PermissionGrantPolicies().ByPermissionGrantPolicieId("permissionGrantPolicy-id").Includes().Post(context.Background(), requestBody, nil)


```