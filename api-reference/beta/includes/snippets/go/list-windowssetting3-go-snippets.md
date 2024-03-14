---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "settingType eq 'backup'"

requestParameters := &graphusers.ItemSettingsWindowsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphusers.ItemSettingsWindowsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

windows, err := graphClient.Me().Settings().Windows().Get(context.Background(), configuration)


```