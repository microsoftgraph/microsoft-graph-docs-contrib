---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphteamwork "github.com/microsoftgraph/msgraph-beta-sdk-go/teamwork"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphteamwork.NewDetermineIfInteractionIsAllowedPostRequestBody()


identity := graphmodels.NewEmailIdentity()
email := "LauraW@contoso.com"
identity.SetEmail(&email) 

users := []graphmodels.Identityable {
	identity,
}
requestBody.SetUsers(users)
interactionType := graphmodels.CREATECHAT_TEAMWORKINTERACTIONTYPE 
requestBody.SetInteractionType(&interactionType) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
determineIfInteractionIsAllowed, err := graphClient.Teamwork().DetermineIfInteractionIsAllowed().PostAsDetermineIfInteractionIsAllowedPostResponse(context.Background(), requestBody, nil)


```