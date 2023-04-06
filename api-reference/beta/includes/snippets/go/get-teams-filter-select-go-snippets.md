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



requestFilter := "displayName eq 'A Contoso Team'"

requestParameters := &graphconfig.TeamsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"id","description"},
}
configuration := &graphconfig.TeamsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.Teams().Get(context.Background(), configuration)


```