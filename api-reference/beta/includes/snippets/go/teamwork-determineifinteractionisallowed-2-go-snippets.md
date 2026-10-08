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


identity := graphmodels.NewTeamworkUserIdentity()
id := "59b5bc69-ca73-4ffd-a2e0-88a79115d13b"
identity.SetId(&id) 
additionalData := map[string]interface{}{
	"tenantId" : "b11186db-6149-4b3d-95ad-23c9e1bf6853", 
}
identity.SetAdditionalData(additionalData)

users := []graphmodels.Identityable {
	identity,
}
requestBody.SetUsers(users)
interactionType := graphmodels.CREATECHAT_TEAMWORKINTERACTIONTYPE 
requestBody.SetInteractionType(&interactionType) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
determineIfInteractionIsAllowed, err := graphClient.Teamwork().DetermineIfInteractionIsAllowed().PostAsDetermineIfInteractionIsAllowedPostResponse(context.Background(), requestBody, nil)


```