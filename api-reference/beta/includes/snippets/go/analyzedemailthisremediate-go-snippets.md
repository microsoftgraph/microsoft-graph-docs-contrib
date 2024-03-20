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
id := "73ca4154-58d8-43d0-a890-08dc18c52e6d-1311265001240363512-1"
analyzedEmail.SetId(&id) 
analyzedEmail1 := graphmodelssecurity.NewAnalyzedEmail()
id := "73ca4154-58d8-43d0-a890-08dc18c52e6d-13805748846361900678-1"
analyzedEmail1.SetId(&id) 

analyzedEmails := []graphmodelssecurity.AnalyzedEmailable {
	analyzedEmail,
	analyzedEmail1,
}
requestBody.SetAnalyzedEmails(analyzedEmails)

graphClient.Security().Collaboration().AnalyzedEmails().MicrosoftGraphSecurityRemediate().Post(context.Background(), requestBody, nil)


```