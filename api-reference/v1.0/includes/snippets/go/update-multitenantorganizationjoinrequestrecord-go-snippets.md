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


requestBody := graphmodels.NewMultiTenantOrganizationJoinRequestRecord()
addedByTenantId := "1fd6544e-e994-4de2-9f1b-787b51c7d325"
requestBody.SetAddedByTenantId(&addedByTenantId) 

joinRequest, err := graphClient.TenantRelationships().MultiTenantOrganization().JoinRequest().Patch(context.Background(), requestBody, nil)


```