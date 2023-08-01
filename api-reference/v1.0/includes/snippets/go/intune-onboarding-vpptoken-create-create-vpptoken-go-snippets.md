---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewVppToken()
organizationName := "Organization Name value"
requestBody.SetOrganizationName(&organizationName) 
vppTokenAccountType := graphmodels.EDUCATION_VPPTOKENACCOUNTTYPE 
requestBody.SetVppTokenAccountType(&vppTokenAccountType) 
appleId := "Apple Id value"
requestBody.SetAppleId(&appleId) 
expirationDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:57:57.2481234-08:00")
requestBody.SetExpirationDateTime(&expirationDateTime) 
lastSyncDateTime , err := time.Parse(time.RFC3339, "2017-01-01T00:02:49.3205976-08:00")
requestBody.SetLastSyncDateTime(&lastSyncDateTime) 
token := "Token value"
requestBody.SetToken(&token) 
state := graphmodels.VALID_VPPTOKENSTATE 
requestBody.SetState(&state) 
lastSyncStatus := graphmodels.INPROGRESS_VPPTOKENSYNCSTATUS 
requestBody.SetLastSyncStatus(&lastSyncStatus) 
automaticallyUpdateApps := true
requestBody.SetAutomaticallyUpdateApps(&automaticallyUpdateApps) 
countryOrRegion := "Country Or Region value"
requestBody.SetCountryOrRegion(&countryOrRegion) 

result, err := graphClient.DeviceAppManagement().VppTokens().Post(context.Background(), requestBody, nil)


```