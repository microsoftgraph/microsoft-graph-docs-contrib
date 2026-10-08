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
email := "LauraW@foo.com"
identity.SetEmail(&email) 
identity1 := graphmodels.NewTeamworkUserIdentity()
userPrincipalName := "MaiaR@foobar.com"
identity1.SetUserPrincipalName(&userPrincipalName) 
identity2 := graphmodels.NewTeamworkUserIdentity()
id := "bd6a223f-59b5-46dd-90bc-0ddebaf3da5a"
identity2.SetId(&id) 

users := []graphmodels.Identityable {
	identity,
	identity1,
	identity2,
}
requestBody.SetUsers(users)
interactionType := graphmodels.CREATECHAT_TEAMWORKINTERACTIONTYPE 
requestBody.SetInteractionType(&interactionType) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
determineIfInteractionIsAllowed, err := graphClient.Teamwork().DetermineIfInteractionIsAllowed().PostAsDetermineIfInteractionIsAllowedPostResponse(context.Background(), requestBody, nil)


```