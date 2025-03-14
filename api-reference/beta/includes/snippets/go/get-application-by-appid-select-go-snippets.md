---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphapplicationswithappid "github.com/microsoftgraph/msgraph-beta-sdk-go/applicationswithappid"
	  //other-imports
)

requestParameters := &graphapplicationswithappid.ApplicationsWithAppIdRequestBuilderGetQueryParameters{
	Select: [] string {"id","appId","displayName","requiredResourceAccess"},
}
configuration := &graphapplicationswithappid.ApplicationsWithAppIdRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
appId := "{appId}"
applications, err := graphClient.ApplicationsWithAppId(&appId).Get(context.Background(), configuration)


```