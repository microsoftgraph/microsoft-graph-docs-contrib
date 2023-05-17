---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Security/TiIndicators/SubmitTiIndicators"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSubmitTiIndicatorsPostRequestBody()


tiIndicator := graphmodels.NewTiIndicator()
activityGroupNames := []string {

}
tiIndicator.SetActivityGroupNames(activityGroupNames)
confidence := int32(0)
tiIndicator.SetConfidence(&confidence) 
description := "This is a canary indicator for demo purpose. Take no action on any observables set in this indicator."
tiIndicator.SetDescription(&description) 
expirationDateTime , err := time.Parse(time.RFC3339, "2019-03-01T21:44:03.1668987+00:00")
tiIndicator.SetExpirationDateTime(&expirationDateTime) 
externalId := "Test--8586509942423126760MS164-0"
tiIndicator.SetExternalId(&externalId) 
fileHashType := graphmodels.SHA256_FILEHASHTYPE 
tiIndicator.SetFileHashType(&fileHashType) 
fileHashValue := "b555c45c5b1b01304217e72118d6ca1b14b7013644a078273cea27bbdc1cf9d6"
tiIndicator.SetFileHashValue(&fileHashValue) 
killChain := []string {

}
tiIndicator.SetKillChain(killChain)
malwareFamilyNames := []string {

}
tiIndicator.SetMalwareFamilyNames(malwareFamilyNames)
severity := int32(0)
tiIndicator.SetSeverity(&severity) 
tags := []string {

}
tiIndicator.SetTags(tags)
targetProduct := "Azure Sentinel"
tiIndicator.SetTargetProduct(&targetProduct) 
threatType := "WatchList"
tiIndicator.SetThreatType(&threatType) 
tlpLevel := graphmodels.GREEN_TLPLEVEL 
tiIndicator.SetTlpLevel(&tlpLevel) 
tiIndicator1 := graphmodels.NewTiIndicator()
activityGroupNames := []string {

}
tiIndicator1.SetActivityGroupNames(activityGroupNames)
confidence := int32(0)
tiIndicator1.SetConfidence(&confidence) 
description := "This is a canary indicator for demo purpose. Take no action on any observables set in this indicator."
tiIndicator1.SetDescription(&description) 
expirationDateTime , err := time.Parse(time.RFC3339, "2019-03-01T21:44:03.1748779+00:00")
tiIndicator1.SetExpirationDateTime(&expirationDateTime) 
externalId := "Test--8586509942423126760MS164-1"
tiIndicator1.SetExternalId(&externalId) 
fileHashType := graphmodels.SHA256_FILEHASHTYPE 
tiIndicator1.SetFileHashType(&fileHashType) 
fileHashValue := "1796b433950990b28d6a22456c9d2b58ced1bdfcdf5f16f7e39d6b9bdca4213b"
tiIndicator1.SetFileHashValue(&fileHashValue) 
killChain := []string {

}
tiIndicator1.SetKillChain(killChain)
malwareFamilyNames := []string {

}
tiIndicator1.SetMalwareFamilyNames(malwareFamilyNames)
severity := int32(0)
tiIndicator1.SetSeverity(&severity) 
tags := []string {

}
tiIndicator1.SetTags(tags)
targetProduct := "Azure Sentinel"
tiIndicator1.SetTargetProduct(&targetProduct) 
threatType := "WatchList"
tiIndicator1.SetThreatType(&threatType) 
tlpLevel := graphmodels.GREEN_TLPLEVEL 
tiIndicator1.SetTlpLevel(&tlpLevel) 

value := []graphmodels.Objectable {
	tiIndicator,
	tiIndicator1,

}
requestBody.SetValue(value)

result, err := graphClient.Security().TiIndicators().SubmitTiIndicators().Post(context.Background(), requestBody, nil)


```