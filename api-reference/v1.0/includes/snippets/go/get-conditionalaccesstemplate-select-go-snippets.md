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

requestParameters := &graphidentity.ConditionalAccessTemplatesItemRequestBuilderGetQueryParameters{
	Select: [] string {"details"},
}
configuration := &graphidentity.ConditionalAccessTemplatesItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
templates, err := graphClient.Identity().ConditionalAccess().Templates().ByConditionalAccessTemplateId("conditionalAccessTemplate-id").Get(context.Background(), configuration)


```