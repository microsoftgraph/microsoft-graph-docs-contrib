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

requestBody := graphmodels.NewCopilotAdminLimitedMode()
isEnabledForGroup := true
requestBody.SetIsEnabledForGroup(&isEnabledForGroup) 
groupId := "4c563cdf-0efa-44c5-a384-dbf57db277df"
requestBody.SetGroupId(&groupId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
limitedMode, err := graphClient.Copilot().Admin().Settings().LimitedMode().Patch(context.Background(), requestBody, nil)


```