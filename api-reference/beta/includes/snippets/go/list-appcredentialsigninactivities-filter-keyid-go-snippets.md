---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphreports "github.com/microsoftgraph/msgraph-beta-sdk-go/reports"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "keyId eq '83f45296-fb8f-4aaa-a399-ac51084e02b7'"

requestParameters := &graphreports.ReportsAppCredentialSignInActivitiesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphreports.ReportsAppCredentialSignInActivitiesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

appCredentialSignInActivities, err := graphClient.Reports().AppCredentialSignInActivities().Get(context.Background(), configuration)


```