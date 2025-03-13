---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphgroups "github.com/microsoftgraph/msgraph-beta-sdk-go/groups"
	  //other-imports
)


requestId := "https://graph.microsoft.com/beta/groups/{other-group-id}"

requestParameters := &graphgroups.ItemAcceptedSenders$refRequestBuilderDeleteQueryParameters{
	Id: &requestId,
}
configuration := &graphgroups.ItemAcceptedSenders$refRequestBuilderDeleteRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Groups().ByGroupId("group-id").AcceptedSenders().Ref().Delete(context.Background(), configuration)


```