---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUrlThreatSubmission()
"@odata.type" := "#microsoft.graph.urlThreatSubmission"
requestBody.Set"@odata.type"(&"@odata.type") 
category := graphmodels.PHISHING_SUBMISSIONCATEGORY 
requestBody.SetCategory(&category) 
webUrl := "http://phishing.contoso.com"
requestBody.SetWebUrl(&webUrl) 

result, err := graphClient.Security().ThreatSubmission().UrlThreats().Post(requestBody)


```