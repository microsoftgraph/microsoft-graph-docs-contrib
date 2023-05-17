---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models//security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEdiscoveryCaseSettings()
redundancyDetection := graphmodels.NewRedundancyDetectionSettings()
requestBody.SetRedundancyDetection(redundancyDetection)
topicModeling := graphmodels.NewTopicModelingSettings()
requestBody.SetTopicModeling(topicModeling)
ocr := graphmodels.NewOcrSettings()
requestBody.SetOcr(ocr)

result, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").Settings().Patch(context.Background(), requestBody, nil)


```