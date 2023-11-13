---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphapplications "github.com/microsoftgraph/msgraph-beta-sdk-go/applications"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphapplications.ApplicationsRequestBuilderGetQueryParameters{
	Select: [] string {"id","displayName","appId","authenticationBehaviors"},
}
configuration := &graphapplications.ApplicationsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

applications, err := graphClient.Applications().Get(context.Background(), configuration)


```