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
principalId := uuid.MustParse("7679d9a4-2323-44cd-b5c2-673ec88d8b12")
requestBody.SetPrincipalId(&principalId) 
resourceId := uuid.MustParse("076e8b57-bac8-49d7-9396-e3449b685055")
requestBody.SetResourceId(&resourceId) 
appRoleId := uuid.MustParse("00000000-0000-0000-0000-000000000000")
requestBody.SetAppRoleId(&appRoleId) 

result, err := graphClient.Groups().ByGroupId("group-id").AppRoleAssignments().Post(context.Background(), requestBody, nil)


```