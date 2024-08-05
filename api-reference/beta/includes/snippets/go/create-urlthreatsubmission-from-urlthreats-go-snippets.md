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

requestBody := graphmodelssecurity.NewUrlThreatSubmission()
category := graphmodels.PHISHING_SUBMISSIONCATEGORY 
requestBody.SetCategory(&category) 
webUrl := "http://phishing.contoso.com"
requestBody.SetWebUrl(&webUrl) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
urlThreats, err := graphClient.Security().ThreatSubmission().UrlThreats().Post(context.Background(), requestBody, nil)


```