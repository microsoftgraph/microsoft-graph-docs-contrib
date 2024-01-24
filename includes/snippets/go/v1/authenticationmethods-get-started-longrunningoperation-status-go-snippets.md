---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestAadgdc := "AM4P"
requestAadgsu := "ssprprod-a"

requestParameters := &graphusers.UserItemAuthenticationOperationItemRequestBuilderGetQueryParameters{
	Aadgdc: &requestAadgdc,
	Aadgsu: &requestAadgsu,
}
configuration := &graphusers.UserItemAuthenticationOperationItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

operations, err := graphClient.Users().ByUserId("user-id").Authentication().Operations().ByLongRunningOperationId("longRunningOperation-id").Get(context.Background(), configuration)


```