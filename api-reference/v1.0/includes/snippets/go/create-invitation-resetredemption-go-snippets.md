---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewInvitation()
invitedUserEmailAddress := "AdeleV@fabrikam.com"
requestBody.SetInvitedUserEmailAddress(&invitedUserEmailAddress) 
inviteRedirectUrl := "https://myapp.contoso.com"
requestBody.SetInviteRedirectUrl(&inviteRedirectUrl) 
invitedUser := graphmodels.NewUser()
id := "264e6d50-eaec-461e-b187-873b1bcf855f"
invitedUser.SetId(&id) 
requestBody.SetInvitedUser(invitedUser)
resetRedemption := true
requestBody.SetResetRedemption(&resetRedemption) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
invitations, err := graphClient.Invitations().Post(context.Background(), requestBody, nil)


```