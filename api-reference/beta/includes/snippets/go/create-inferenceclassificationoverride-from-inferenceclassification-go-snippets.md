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


requestBody := graphmodels.NewInferenceClassificationOverride()
classifyAs := graphmodels.FOCUSED_INFERENCECLASSIFICATIONTYPE 
requestBody.SetClassifyAs(&classifyAs) 
senderEmailAddress := graphmodels.NewEmailAddress()
name := "Samantha Booth"
senderEmailAddress.SetName(&name) 
address := "samanthab@adatum.onmicrosoft.com"
senderEmailAddress.SetAddress(&address) 
requestBody.SetSenderEmailAddress(senderEmailAddress)

result, err := graphClient.Me().InferenceClassification().Overrides().Post(context.Background(), requestBody, nil)


```