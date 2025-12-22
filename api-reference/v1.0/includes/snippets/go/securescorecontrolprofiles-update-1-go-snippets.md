---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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
	"comment" : "control is under 'Third Party' exception", 
	"state" : "Third Party", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
secureScoreControlProfiles, err := graphClient.Security().SecureScoreControlProfiles().BySecureScoreControlProfileId("secureScoreControlProfile-id").Patch(context.Background(), requestBody, nil)


```