---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/groups"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "mailEnabled eq false and securityEnabled eq true and NOT) and membershipRuleProcessingState eq 'On'"
requestCount := true

requestParameters := &graphconfig.GroupsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Count: &requestCount,
	Select: [] string {"id","membershipRule","membershipRuleProcessingState"},
}
configuration := &graphconfig.GroupsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Groups().Get(context.Background(), configuration)


```