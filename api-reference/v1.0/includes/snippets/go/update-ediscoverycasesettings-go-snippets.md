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
requestBody.SetRedundancyDetection(redundancyDetection)
topicModeling := graphmodelssecurity.NewTopicModelingSettings()
requestBody.SetTopicModeling(topicModeling)
ocr := graphmodelssecurity.NewOcrSettings()
requestBody.SetOcr(ocr)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
settings, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").Settings().Patch(context.Background(), requestBody, nil)


```