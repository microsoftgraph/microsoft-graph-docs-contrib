---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewInvitation()
invitedUserEmailAddress := "admin@fabrikam.com"
requestBody.SetInvitedUserEmailAddress(&invitedUserEmailAddress) 
inviteRedirectUrl := "https://myapp.contoso.com"
requestBody.SetInviteRedirectUrl(&inviteRedirectUrl) 

result, err := graphClient.Invitations().Post(context.Background(), requestBody, nil)


```