---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-sdk-go/models/security"
	  //other-imports
)

requestBody := graphmodelssecurity.NewEdiscoveryCaseSettings()
redundancyDetection := graphmodelssecurity.NewRedundancyDetectionSettings()
isEnabled := true
redundancyDetection.SetIsEnabled(&isEnabled) 
similarityThreshold := int32(65)
redundancyDetection.SetSimilarityThreshold(&similarityThreshold) 
minWords := int32(10)
redundancyDetection.SetMinWords(&minWords) 
maxWords := int32(500000)
redundancyDetection.SetMaxWords(&maxWords) 
requestBody.SetRedundancyDetection(redundancyDetection)
topicModeling := graphmodelssecurity.NewTopicModelingSettings()
isEnabled := false
topicModeling.SetIsEnabled(&isEnabled) 
ignoreNumbers := true
topicModeling.SetIgnoreNumbers(&ignoreNumbers) 
topicCount := int32(100)
topicModeling.SetTopicCount(&topicCount) 
dynamicallyAdjustTopicCount := true
topicModeling.SetDynamicallyAdjustTopicCount(&dynamicallyAdjustTopicCount) 
requestBody.SetTopicModeling(topicModeling)
ocr := graphmodelssecurity.NewOcrSettings()
isEnabled := false
ocr.SetIsEnabled(&isEnabled) 
maxImageSize := int32(24576)
ocr.SetMaxImageSize(&maxImageSize) 
timeout , err := abstractions.ParseISODuration("PT1M")
ocr.SetTimeout(&timeout) 
requestBody.SetOcr(ocr)
caseType := graphmodels.STANDARD_CASETYPE 
requestBody.SetCaseType(&caseType) 
reviewSetSettings := graphmodels.DISABLEGROUPING_REVIEWSETSETTINGS 
requestBody.SetReviewSetSettings(&reviewSetSettings) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
settings, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").Settings().Patch(context.Background(), requestBody, nil)


```