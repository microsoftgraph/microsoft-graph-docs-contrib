---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUrlThreatSubmission()
category := graphmodels.PHISHING_SUBMISSIONCATEGORY 
requestBody.SetCategory(&category) 
webUrl := "http://phishing.contoso.com"
requestBody.SetWebUrl(&webUrl) 

result, err := graphClient.Security().ThreatSubmission().UrlThreats().Post(context.Background(), requestBody, nil)


```