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
resourceApplication := "00000003-0000-0000-c000-000000000000"
requestBody.SetResourceApplication(&resourceApplication) 

result, err := graphClient.Policies().PermissionGrantPolicies().ByPermissionGrantPolicieId("permissionGrantPolicy-id").Excludes().Post(context.Background(), requestBody, nil)


```