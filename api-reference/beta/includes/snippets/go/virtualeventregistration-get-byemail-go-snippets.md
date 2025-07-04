---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsolutions "github.com/microsoftgraph/msgraph-beta-sdk-go/solutions"
	  //other-imports
)


requestFilter := "email eq 'EmileeMPham@contoso.com'"

requestParameters := &graphsolutions.VirtualEventsWebinarsItemRegistrationsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphsolutions.VirtualEventsWebinarsItemRegistrationsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
registrations, err := graphClient.Solutions().VirtualEvents().Webinars().ByVirtualEventWebinarId("virtualEventWebinar-id").Registrations().Get(context.Background(), configuration)


```