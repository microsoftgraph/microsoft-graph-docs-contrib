---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewInvitation()
invitedUserDisplayName := "John Doe (Tailspin Toys)"
requestBody.SetInvitedUserDisplayName(&invitedUserDisplayName) 
invitedUserEmailAddress := "john@tailspintoys.com"
requestBody.SetInvitedUserEmailAddress(&invitedUserEmailAddress) 
sendInvitationMessage := false
requestBody.SetSendInvitationMessage(&sendInvitationMessage) 
inviteRedirectUrl := "https://myapps.microsoft.com"
requestBody.SetInviteRedirectUrl(&inviteRedirectUrl) 

result, err := graphClient.Invitations().Post(context.Background(), requestBody, nil)


```