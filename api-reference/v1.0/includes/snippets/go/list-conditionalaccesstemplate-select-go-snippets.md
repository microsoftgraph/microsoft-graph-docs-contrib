---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-sdk-go/identity"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "scenarios has 'secureFoundation'"

requestParameters := &graphidentity.IdentityConditionalAccessTemplatesRequestBuilderGetQueryParameters{
	Select: [] string {"name","description","id","scenarios"},
	Filter: &requestFilter,
}
configuration := &graphidentity.IdentityConditionalAccessTemplatesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().ConditionalAccess().Templates().Get(context.Background(), configuration)


```