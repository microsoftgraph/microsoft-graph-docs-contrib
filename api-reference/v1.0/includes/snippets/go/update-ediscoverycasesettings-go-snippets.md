---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-sdk-go/models/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewEdiscoveryCaseSettings()
redundancyDetection := graphmodelssecurity.NewRedundancyDetectionSettings()
requestBody.SetRedundancyDetection(redundancyDetection)
topicModeling := graphmodelssecurity.NewTopicModelingSettings()
requestBody.SetTopicModeling(topicModeling)
ocr := graphmodelssecurity.NewOcrSettings()
requestBody.SetOcr(ocr)

settings, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").Settings().Patch(context.Background(), requestBody, nil)


```