---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphapplications "github.com/microsoftgraph/msgraph-sdk-go/applications"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphapplications.ApplicationItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","appId","displayName","requiredResourceAccess"},
}
configuration := &graphapplications.ApplicationItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Applications().ByApplicationId("application-id").Get(context.Background(), configuration)


```