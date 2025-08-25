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

requestBody := graphmodels.NewUnifiedRoleAssignmentMultiple()
displayName := "Example role assignment"
requestBody.SetDisplayName(&displayName) 
roleDefinitionId := "b5c08161-a7af-481c-ace2-a20a69a48fb1"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
principalIds := []string {
	"8e811502-ebda-4782-8f81-071d17f0f892",
	"30e3492f-964c-4d73-88c6-986a53c6e2a0",
}
requestBody.SetPrincipalIds(principalIds)
appScopeIds := []string {
	"Mdc",
	"/CloudSet/123",
}
requestBody.SetAppScopeIds(appScopeIds)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
roleAssignments, err := graphClient.RoleManagement().Defender().RoleAssignments().Post(context.Background(), requestBody, nil)


```