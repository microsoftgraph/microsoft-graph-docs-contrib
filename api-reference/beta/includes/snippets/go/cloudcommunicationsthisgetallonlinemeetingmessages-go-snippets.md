---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphcommunications "github.com/microsoftgraph/msgraph-beta-sdk-go/communications"
	  //other-imports
)

requestParameters := &graphcommunications.CommunicationsGetAllOnlineMeetingMessagesRequestBuilderGetQueryParameters{
	Expand: [] string {"conversation"},
}
configuration := &graphcommunications.CommunicationsGetAllOnlineMeetingMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
getAllOnlineMeetingMessages, err := graphClient.Communications().GetAllOnlineMeetingMessages().GetAsGetAllOnlineMeetingMessagesGetResponse(context.Background(), configuration)


```