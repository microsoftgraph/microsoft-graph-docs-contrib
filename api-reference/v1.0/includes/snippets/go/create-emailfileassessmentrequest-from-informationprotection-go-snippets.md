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


requestBody := graphmodels.NewThreatAssessmentRequest()
expectedAssessment := graphmodels.BLOCK_THREATEXPECTEDASSESSMENT 
requestBody.SetExpectedAssessment(&expectedAssessment) 
category := graphmodels.MALWARE_THREATCATEGORY 
requestBody.SetCategory(&category) 
additionalData := map[string]interface{}{
	"recipientEmail" : "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com", 
	"contentData" : "UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.InformationProtection().ThreatAssessmentRequests().Post(context.Background(), requestBody, nil)


```