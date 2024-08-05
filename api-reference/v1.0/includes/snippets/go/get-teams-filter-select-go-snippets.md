---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphteams "github.com/microsoftgraph/msgraph-sdk-go/teams"
	  //other-imports
)


requestFilter := "displayName eq 'A Contoso Team'"

requestParameters := &graphteams.TeamsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"id","description"},
}
configuration := &graphteams.TeamsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
teams, err := graphClient.Teams().Get(context.Background(), configuration)


```