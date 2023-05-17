---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/identity"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "scenarios has 'secureFoundation'"

requestParameters := &graphconfig.IdentityConditionalAccessTemplatesRequestBuilderGetQueryParameters{
	Select: [] string {"name","description","id","scenarios"},
	Filter: &requestFilter,
}
configuration := &graphconfig.IdentityConditionalAccessTemplatesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().ConditionalAccess().Templates().Get(context.Background(), configuration)


```