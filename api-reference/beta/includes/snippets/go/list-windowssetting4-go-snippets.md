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



requestFilter := "windowsDeviceId eq '67585f9f-ee4b-4dd8-808e-d88375d66ef7'"

requestParameters := &graphusers.ItemSettingsWindowsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphusers.ItemSettingsWindowsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

windows, err := graphClient.Me().Settings().Windows().Get(context.Background(), configuration)


```