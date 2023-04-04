---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/teams"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "startswith(displayName,%20'A')"
requestTop := int32(2)

requestParameters := &graphconfig.TeamsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Top: &requestTop,
}
configuration := &graphconfig.TeamsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.Teams().Get(context.Background(), configuration)


```