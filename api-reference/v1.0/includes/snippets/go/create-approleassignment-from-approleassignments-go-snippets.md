---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "time"
	  "github.com/google/uuid"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAppRoleAssignment()
deletedDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetDeletedDateTime(&deletedDateTime) 
appRoleId := uuid.MustParse("Guid")
requestBody.SetAppRoleId(&appRoleId) 
principalDisplayName := "String"
requestBody.SetPrincipalDisplayName(&principalDisplayName) 
principalId := uuid.MustParse("Guid")
requestBody.SetPrincipalId(&principalId) 
principalType := "String"
requestBody.SetPrincipalType(&principalType) 
resourceDisplayName := "String"
requestBody.SetResourceDisplayName(&resourceDisplayName) 
resourceId := uuid.MustParse("Guid")
requestBody.SetResourceId(&resourceId) 
additionalData := map[string]interface{}{
	"creationTimestamp" : "String (timestamp)", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
appRoleAssignments, err := graphClient.Users().ByUserId("user-id").AppRoleAssignments().Post(context.Background(), requestBody, nil)


```