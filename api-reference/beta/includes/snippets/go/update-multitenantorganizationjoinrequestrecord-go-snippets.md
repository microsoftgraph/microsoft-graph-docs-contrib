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

requestBody := graphmodels.NewMultiTenantOrganizationJoinRequestRecord()
addedByTenantId := "1fd6544e-e994-4de2-9f1b-787b51c7d325"
requestBody.SetAddedByTenantId(&addedByTenantId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
joinRequest, err := graphClient.TenantRelationships().MultiTenantOrganization().JoinRequest().Patch(context.Background(), requestBody, nil)


```