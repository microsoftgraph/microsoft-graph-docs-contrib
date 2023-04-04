---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTiIndicator()
action := graphmodels.ALERT_TIACTION 
requestBody.SetAction(&action) 
activityGroupNames := []string {

}
requestBody.SetActivityGroupNames(activityGroupNames)
confidence := int32(0)
requestBody.SetConfidence(&confidence) 
description := "This is a canary indicator for demo purpose. Take no action on any observables set in this indicator."
requestBody.SetDescription(&description) 
expirationDateTime , err := time.Parse(time.RFC3339, "2019-03-01T21:43:37.5031462+00:00")
requestBody.SetExpirationDateTime(&expirationDateTime) 
externalId := "Test--8586509942679764298MS501"
requestBody.SetExternalId(&externalId) 
fileHashType := graphmodels.SHA256_FILEHASHTYPE 
requestBody.SetFileHashType(&fileHashType) 
fileHashValue := "aa64428647b57bf51524d1756b2ed746e5a3f31b67cf7fe5b5d8a9daf07ca313"
requestBody.SetFileHashValue(&fileHashValue) 
killChain := []string {

}
requestBody.SetKillChain(killChain)
malwareFamilyNames := []string {

}
requestBody.SetMalwareFamilyNames(malwareFamilyNames)
severity := int32(0)
requestBody.SetSeverity(&severity) 
tags := []string {

}
requestBody.SetTags(tags)
targetProduct := "Azure Sentinel"
requestBody.SetTargetProduct(&targetProduct) 
threatType := "WatchList"
requestBody.SetThreatType(&threatType) 
tlpLevel := graphmodels.GREEN_TLPLEVEL 
requestBody.SetTlpLevel(&tlpLevel) 

result, err := graphClient.Security().TiIndicators().Post(context.Background(), requestBody, nil)


```