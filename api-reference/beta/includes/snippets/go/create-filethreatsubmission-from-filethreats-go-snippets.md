---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

requestBody := graphmodelssecurity.NewFileThreatSubmission()
category := graphmodels.MALWARE_SUBMISSIONCATEGORY 
requestBody.SetCategory(&category) 
fileName := "test.html"
requestBody.SetFileName(&fileName) 
fileContent := "UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC....."
requestBody.SetFileContent(&fileContent) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
fileThreats, err := graphClient.Security().ThreatSubmission().FileThreats().Post(context.Background(), requestBody, nil)


```