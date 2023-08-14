---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphapplications(appid='{appid}') "github.com/microsoftgraph/msgraph-beta-sdk-go/applications(appid='{appid}')"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphapplications(appid='{appid}').Applications(appId='{appId}')RequestBuilderGetQueryParameters{
	Select: [] string {"id","appId","displayName","requiredResourceAccess"},
}
configuration := &graphapplications(appid='{appid}').Applications(appId='{appId}')RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

applications(appId='{appId}'), err := graphClient.Applications(appId='{appId}')().Get(context.Background(), configuration)


```