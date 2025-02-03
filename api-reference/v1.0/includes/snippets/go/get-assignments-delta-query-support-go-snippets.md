---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  grapheducation "github.com/microsoftgraph/msgraph-sdk-go/education"
	  //other-imports
)


requestTop := int32(2)

requestParameters := &grapheducation.ClassesItemAssignmentsDeltaRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &grapheducation.ClassesItemAssignmentsDeltaRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
delta, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().Delta().GetAsDeltaGetResponse(context.Background(), configuration)


```