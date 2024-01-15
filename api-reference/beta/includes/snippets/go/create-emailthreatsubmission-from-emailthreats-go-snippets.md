---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewEmailThreatSubmission()
category := graphmodels.SPAM_SUBMISSIONCATEGORY 
requestBody.SetCategory(&category) 
recipientEmailAddress := "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com"
requestBody.SetRecipientEmailAddress(&recipientEmailAddress) 
additionalData := map[string]interface{}{
	"messageUrl" : "https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt=", 
}
requestBody.SetAdditionalData(additionalData)

emailThreats, err := graphClient.Security().ThreatSubmission().EmailThreats().Post(context.Background(), requestBody, nil)


```