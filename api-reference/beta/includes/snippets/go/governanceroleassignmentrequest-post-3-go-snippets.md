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


requestBody := graphmodels.NewGovernanceRoleAssignmentRequest()
roleDefinitionId := "bc75b4e6-7403-4243-bf2f-d1f6990be122"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
resourceId := "fb016e3a-c3ed-4d9d-96b6-a54cd4f0b735"
requestBody.SetResourceId(&resourceId) 
subjectId := "918e54be-12c4-4f4c-a6d3-2ee0e3661c51"
requestBody.SetSubjectId(&subjectId) 
assignmentState := "Active"
requestBody.SetAssignmentState(&assignmentState) 
type := "UserRemove"
requestBody.SetType(&type) 
reason := "Deactivate the role"
requestBody.SetReason(&reason) 
linkedEligibleRoleAssignmentId := "cb8a533e-02d5-42ad-8499-916b1e4822ec"
requestBody.SetLinkedEligibleRoleAssignmentId(&linkedEligibleRoleAssignmentId) 

result, err := graphClient.PrivilegedAccess().ByPrivilegedAccesId("privilegedAccess-id").RoleAssignmentRequests().Post(context.Background(), requestBody, nil)


```