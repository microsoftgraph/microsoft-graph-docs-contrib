---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestTop := int32(3)

requestParameters := &graphsecurity.SecurityRulesDetectionRulesRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphsecurity.SecurityRulesDetectionRulesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

detectionRules, err := graphClient.Security().Rules().DetectionRules().Get(context.Background(), configuration)


```