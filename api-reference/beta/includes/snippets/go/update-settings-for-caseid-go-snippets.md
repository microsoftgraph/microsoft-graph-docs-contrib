---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsediscovery "github.com/microsoftgraph/msgraph-beta-sdk-go/models/ediscovery"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
settings, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").Settings().Patch(context.Background(), requestBody, nil)


```