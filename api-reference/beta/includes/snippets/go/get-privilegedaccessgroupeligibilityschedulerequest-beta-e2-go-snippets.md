---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  //other-imports
)

requestParameters := &graphidentitygovernance.PrivilegedAccessGroupEligibilityScheduleRequestsItemRequestBuilderGetQueryParameters{
	Select: [] string {"principalId","action","groupId"},
}
configuration := &graphidentitygovernance.PrivilegedAccessGroupEligibilityScheduleRequestsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
eligibilityScheduleRequests, err := graphClient.IdentityGovernance().PrivilegedAccess().Group().EligibilityScheduleRequests().ByPrivilegedAccessGroupEligibilityScheduleRequestId("privilegedAccessGroupEligibilityScheduleRequest-id").Get(context.Background(), configuration)


```