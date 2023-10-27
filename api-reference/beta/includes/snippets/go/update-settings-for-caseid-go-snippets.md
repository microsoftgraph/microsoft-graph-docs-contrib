---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsediscovery "github.com/microsoftgraph/msgraph-beta-sdk-go/models/ediscovery"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsediscovery.NewCaseSettings()
redundancyDetection := graphmodelsediscovery.NewRedundancyDetectionSettings()
isEnabled := false
redundancyDetection.SetIsEnabled(&isEnabled) 
similarityThreshold := int32(70)
redundancyDetection.SetSimilarityThreshold(&similarityThreshold) 
minWords := int32(12)
redundancyDetection.SetMinWords(&minWords) 
maxWords := int32(400000)
redundancyDetection.SetMaxWords(&maxWords) 
requestBody.SetRedundancyDetection(redundancyDetection)
topicModeling := graphmodelsediscovery.NewTopicModelingSettings()
isEnabled := false
topicModeling.SetIsEnabled(&isEnabled) 
ignoreNumbers := false
topicModeling.SetIgnoreNumbers(&ignoreNumbers) 
topicCount := int32(50)
topicModeling.SetTopicCount(&topicCount) 
dynamicallyAdjustTopicCount := false
topicModeling.SetDynamicallyAdjustTopicCount(&dynamicallyAdjustTopicCount) 
requestBody.SetTopicModeling(topicModeling)
ocr := graphmodelsediscovery.NewOcrSettings()
isEnabled := true
ocr.SetIsEnabled(&isEnabled) 
maxImageSize := int32(12000)
ocr.SetMaxImageSize(&maxImageSize) 
requestBody.SetOcr(ocr)

settings, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").Settings().Patch(context.Background(), requestBody, nil)


```