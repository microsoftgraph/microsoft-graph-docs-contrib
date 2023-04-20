---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSecureScoreControlProfile()
vendorInformation := graphmodels.NewSecurityVendorInformation()
provider := "SecureScore"
vendorInformation.SetProvider(&provider) 
providerVersion := null
vendorInformation.SetProviderVersion(&providerVersion) 
subProvider := null
vendorInformation.SetSubProvider(&subProvider) 
vendor := "Microsoft"
vendorInformation.SetVendor(&vendor) 
requestBody.SetVendorInformation(vendorInformation)
additionalData := map[string]interface{}{
	"assignedTo" : "", 
	"comment" : "control is reviewed", 
	"state" : "Reviewed", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Security().SecureScoreControlProfiles().BySecureScoreControlProfileId("secureScoreControlProfile-id").Patch(context.Background(), requestBody, nil)


```