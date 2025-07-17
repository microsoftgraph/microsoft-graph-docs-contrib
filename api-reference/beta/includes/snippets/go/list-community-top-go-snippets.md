---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphemployeeexperience "github.com/microsoftgraph/msgraph-beta-sdk-go/employeeexperience"
	  //other-imports
)


requestTop := int32(2)

requestParameters := &graphemployeeexperience.EmployeeExperienceCommunitiesRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphemployeeexperience.EmployeeExperienceCommunitiesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
communities, err := graphClient.EmployeeExperience().Communities().Get(context.Background(), configuration)


```