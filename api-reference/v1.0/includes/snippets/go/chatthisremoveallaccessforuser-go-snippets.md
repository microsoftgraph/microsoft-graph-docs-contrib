---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphchats "github.com/microsoftgraph/msgraph-sdk-go/chats"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphchats.NewRemoveAllAccessForUserPostRequestBody()
user := graphmodels.NewTeamworkUserIdentity()
id := "f47ac10b-58cc-4372-a567-0e02b2c3d479"
user.SetId(&id) 
additionalData := map[string]interface{}{
	"tenantId" : "a1b2c3d4-e5f6-7890-1234-567890abcdef", 
}
user.SetAdditionalData(additionalData)
requestBody.SetUser(user)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Chats().ByChatId("chat-id").RemoveAllAccessForUser().Post(context.Background(), requestBody, nil)


```