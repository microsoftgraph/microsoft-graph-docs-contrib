---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphadmin "github.com/microsoftgraph/msgraph-beta-sdk-go/admin"
	  graphmodelsteamsadministration "github.com/microsoftgraph/msgraph-beta-sdk-go/models/teamsadministration"
	  //other-imports
)

requestBody := graphadmin.NewAssignPostRequestBody()


teamsPolicyUserAssignment := graphmodelsteamsadministration.NewTeamsPolicyUserAssignment()
userId := "5c802b19-3600-83f1-1767-7b9edc7f38ab"
teamsPolicyUserAssignment.SetUserId(&userId) 
policyType := "TeamsMeetingPolicy"
teamsPolicyUserAssignment.SetPolicyType(&policyType) 
policyId := "VnMAaN3X2X1B9tEHx1CJWfC76PSaKEzA4NoUuqIMRUo"
teamsPolicyUserAssignment.SetPolicyId(&policyId) 

value := []graphmodelsteamsadministration.TeamsPolicyUserAssignmentable {
	teamsPolicyUserAssignment,
}
requestBody.SetValue(value)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Admin().Teams().Policy().UserAssignments().MicrosoftGraphTeamsAdministrationAssign().Post(context.Background(), requestBody, nil)


```