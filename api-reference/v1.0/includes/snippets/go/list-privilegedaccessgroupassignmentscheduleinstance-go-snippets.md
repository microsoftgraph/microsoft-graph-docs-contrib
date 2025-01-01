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


requestFilter := "groupId eq '2b5ed229-4072-478d-9504-a047ebd4b07d'"

requestParameters := &graphidentitygovernance.PrivilegedAccessGroupAssignmentScheduleInstancesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentitygovernance.PrivilegedAccessGroupAssignmentScheduleInstancesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assignmentScheduleInstances, err := graphClient.IdentityGovernance().PrivilegedAccess().Group().AssignmentScheduleInstances().Get(context.Background(), configuration)


```