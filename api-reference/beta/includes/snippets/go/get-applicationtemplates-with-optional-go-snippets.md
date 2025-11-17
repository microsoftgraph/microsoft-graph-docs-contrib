---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphapplicationtemplates "github.com/microsoftgraph/msgraph-beta-sdk-go/applicationtemplates"
	  //other-imports
)

requestParameters := &graphapplicationtemplates.ApplicationTemplatesRequestBuilderGetQueryParameters{
	Select: [] string {"id","displayName","riskScore","riskFactors"},
}
configuration := &graphapplicationtemplates.ApplicationTemplatesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
applicationTemplates, err := graphClient.ApplicationTemplates().Get(context.Background(), configuration)


```