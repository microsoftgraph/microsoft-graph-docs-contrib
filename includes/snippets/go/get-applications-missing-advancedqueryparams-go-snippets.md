---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/applications"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestSearch := "\"displayName:Browser\""

requestParameters := &graphconfig.ApplicationsRequestBuilderGetQueryParameters{
	Search: &requestSearch,
}
configuration := &graphconfig.ApplicationsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Applications().Get(context.Background(), configuration)


```