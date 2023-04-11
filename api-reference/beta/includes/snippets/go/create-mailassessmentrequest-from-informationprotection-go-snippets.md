---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewThreatAssessmentRequest()
expectedAssessment := graphmodels.BLOCK_THREATEXPECTEDASSESSMENT 
requestBody.SetExpectedAssessment(&expectedAssessment) 
category := graphmodels.SPAM_THREATCATEGORY 
requestBody.SetCategory(&category) 
additionalData := map[string]interface{}{
	"recipientEmail" : "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com", 
	"messageUri" : "https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt=", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.InformationProtection().ThreatAssessmentRequests().Post(context.Background(), requestBody, nil)


```