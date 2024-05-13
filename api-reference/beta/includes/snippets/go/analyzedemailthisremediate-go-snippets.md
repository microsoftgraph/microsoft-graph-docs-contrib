---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphsecurity.NewRemediatePostRequestBody()
displayName := "Clean up Phish email"
requestBody.SetDisplayName(&displayName) 
description := "Delete email"
requestBody.SetDescription(&description) 
severity := graphmodels.MEDIUM_REMEDIATIONSEVERITY 
requestBody.SetSeverity(&severity) 
action := graphmodels.SOFTDELETE_REMEDIATIONACTION 
requestBody.SetAction(&action) 
remediateSendersCopy := false
requestBody.SetRemediateSendersCopy(&remediateSendersCopy) 


analyzedEmail := graphmodelssecurity.NewAnalyzedEmail()
networkMessageId := "73ca4154-58d8-43d0-a890-08dc18c52e6d"
analyzedEmail.SetNetworkMessageId(&networkMessageId) 
recipientEmailAddress := "hannah.jarvis@contoso.com"
analyzedEmail.SetRecipientEmailAddress(&recipientEmailAddress) 
analyzedEmail1 := graphmodelssecurity.NewAnalyzedEmail()
networkMessageId := "73ca4154-58d8-43d0-a890-08dc18c52e6d"
analyzedEmail1.SetNetworkMessageId(&networkMessageId) 
recipientEmailAddress := "preston.morales@contoso.com"
analyzedEmail1.SetRecipientEmailAddress(&recipientEmailAddress) 

analyzedEmails := []graphmodelssecurity.AnalyzedEmailable {
	analyzedEmail,
	analyzedEmail1,
}
requestBody.SetAnalyzedEmails(analyzedEmails)

graphClient.Security().Collaboration().AnalyzedEmails().MicrosoftGraphSecurityRemediate().Post(context.Background(), requestBody, nil)


```