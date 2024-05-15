---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphapplications(appid='{appid}') "github.com/microsoftgraph/msgraph-sdk-go/applications(appid='{appid}')"
	  //other-imports
)

requestParameters := &graphapplications(appid='{appid}').Applications(appId='{appId}')RequestBuilderGetQueryParameters{
	Select: [] string {"id","appId","displayName","requiredResourceAccess"},
}
configuration := &graphapplications(appid='{appid}').Applications(appId='{appId}')RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
appId := "{appId}"
applications, err := graphClient.ApplicationsWithAppId(&appId).Get(context.Background(), configuration)


```