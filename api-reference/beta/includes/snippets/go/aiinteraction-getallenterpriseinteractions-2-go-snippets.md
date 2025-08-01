---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphcopilot "github.com/microsoftgraph/msgraph-beta-sdk-go/copilot"
	  //other-imports
)


requestFilter := "appClass eq 'IPM.SkypeTeams.Message.Copilot.BizChat'"

requestParameters := &graphcopilot.UsersItemInteractionHistoryGetAllEnterpriseInteractionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphcopilot.UsersItemInteractionHistoryGetAllEnterpriseInteractionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
getAllEnterpriseInteractions, err := graphClient.Copilot().Users().ByAiUserId("aiUser-id").InteractionHistory().GetAllEnterpriseInteractions().GetAsGetAllEnterpriseInteractionsGetResponse(context.Background(), configuration)


```