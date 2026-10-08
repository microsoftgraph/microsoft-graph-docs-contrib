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
	  //other-imports
)


requestTop := int32(100)
requestSkip := int32(200)

requestParameters := &graphadmin.TeamsTelephoneNumberManagementNumberAssignmentsRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Skip: &requestSkip,
}
configuration := &graphadmin.TeamsTelephoneNumberManagementNumberAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
numberAssignments, err := graphClient.Admin().Teams().TelephoneNumberManagement().NumberAssignments().Get(context.Background(), configuration)


```