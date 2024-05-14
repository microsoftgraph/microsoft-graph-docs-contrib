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
addedByTenantId := "00000000-0000-0000-0000-000000000000"
requestBody.SetAddedByTenantId(&addedByTenantId) 

joinRequest, err := graphClient.TenantRelationships().MultiTenantOrganization().JoinRequest().Patch(context.Background(), requestBody, nil)


```