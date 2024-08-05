---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewSchedulingGroup()
displayName := "Cashiers"
requestBody.SetDisplayName(&displayName) 
isActive := true
requestBody.SetIsActive(&isActive) 
code := "CashierCode"
requestBody.SetCode(&code) 
userIds := []string {
	"c5d0c76b-80c4-481c-be50-923cd8d680a1",
	"2a4296b3-a28a-44ba-bc66-0274b9b95851",
}
requestBody.SetUserIds(userIds)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
schedulingGroups, err := graphClient.Teams().ByTeamId("team-id").Schedule().SchedulingGroups().Post(context.Background(), requestBody, nil)


```