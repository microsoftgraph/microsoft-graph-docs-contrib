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



requestFilter := "state in ('active', 'suspended') and serviceIdentifier in ('ABCD')"

requestParameters := &graphusers.UserItemUsageRightsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphusers.UserItemUsageRightsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().ByUserId("user-id").UsageRights().Get(context.Background(), configuration)


```