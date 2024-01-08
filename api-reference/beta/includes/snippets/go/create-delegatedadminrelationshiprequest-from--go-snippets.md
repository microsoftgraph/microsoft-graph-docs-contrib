---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDelegatedAdminRelationshipRequest()
action := graphmodels.LOCKFORAPPROVAL_DELEGATEDADMINRELATIONSHIPREQUESTACTION 
requestBody.SetAction(&action) 

requests, err := graphClient.TenantRelationships().DelegatedAdminRelationships().ByDelegatedAdminRelationshipId("delegatedAdminRelationship-id").Requests().Post(context.Background(), requestBody, nil)


```