---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-sdk-go/identity"
	  //other-imports
)


requestFilter := "scenarios has 'secureFoundation'"

requestParameters := &graphidentity.ConditionalAccessTemplatesRequestBuilderGetQueryParameters{
	Select: [] string {"name","description","id","scenarios"},
	Filter: &requestFilter,
}
configuration := &graphidentity.ConditionalAccessTemplatesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
templates, err := graphClient.Identity().ConditionalAccess().Templates().Get(context.Background(), configuration)


```