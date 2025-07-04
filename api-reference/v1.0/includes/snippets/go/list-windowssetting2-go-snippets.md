---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)


requestFilter := "settingType eq 'roaming'"

requestParameters := &graphusers.SettingsWindowsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphusers.SettingsWindowsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
windows, err := graphClient.Me().Settings().Windows().Get(context.Background(), configuration)


```