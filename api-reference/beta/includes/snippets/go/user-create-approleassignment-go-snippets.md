---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "github.com/google/uuid"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAppRoleAssignment()
principalId := uuid.MustParse("cde330e5-2150-4c11-9c5b-14bfdc948c79")
requestBody.SetPrincipalId(&principalId) 
resourceId := uuid.MustParse("8e881353-1735-45af-af21-ee1344582a4d")
requestBody.SetResourceId(&resourceId) 
appRoleId := uuid.MustParse("00000000-0000-0000-0000-000000000000")
requestBody.SetAppRoleId(&appRoleId) 

result, err := graphClient.Users().ByUserId("user-id").AppRoleAssignments().Post(context.Background(), requestBody, nil)


```