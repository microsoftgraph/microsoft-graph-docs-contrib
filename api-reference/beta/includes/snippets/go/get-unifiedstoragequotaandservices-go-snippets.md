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


requestParameters := &graphusers.ItemSettingsStorageQuotaRequestBuilderGetQueryParameters{
	Expand: [] string {"services"},
}
configuration := &graphusers.ItemSettingsStorageQuotaRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

quota, err := graphClient.Me().Settings().Storage().Quota().Get(context.Background(), configuration)


```