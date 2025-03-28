---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-sdk-go/identitygovernance"
	  //other-imports
)


requestFilter := "groupId eq 'd5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc' and accessId eq 'member'"

requestParameters := &graphidentitygovernance.PrivilegedAccessGroupEligibilitySchedulesFilterByCurrentUserWithOnRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentitygovernance.PrivilegedAccessGroupEligibilitySchedulesFilterByCurrentUserWithOnRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
on := "principal"
filterByCurrentUser, err := graphClient.IdentityGovernance().PrivilegedAccess().Group().EligibilitySchedules().FilterByCurrentUserWithOn(&on).GetAsFilterByCurrentUserWithOnGetResponse(context.Background(), configuration)


```