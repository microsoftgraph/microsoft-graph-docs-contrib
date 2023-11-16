---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewUrlThreatSubmission()
category := graphmodels.PHISHING_SUBMISSIONCATEGORY 
requestBody.SetCategory(&category) 
webUrl := "http://phishing.contoso.com"
requestBody.SetWebUrl(&webUrl) 

urlThreats, err := graphClient.Security().ThreatSubmission().UrlThreats().Post(context.Background(), requestBody, nil)


```