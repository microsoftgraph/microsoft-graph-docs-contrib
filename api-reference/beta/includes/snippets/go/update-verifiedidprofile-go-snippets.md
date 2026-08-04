---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewVerifiedIdProfile()
verifiedIdProfileConfiguration := graphmodels.NewVerifiedIdProfileConfiguration()
additionalData := map[string]interface{}{
	"methodType" : "tenantCustomCredential", 
	"manifestUrl" : "https://verifiedid.contoso.com/manifest", 
}
verifiedIdProfileConfiguration.SetAdditionalData(additionalData)
requestBody.SetVerifiedIdProfileConfiguration(verifiedIdProfileConfiguration)


verifiedIdUsageConfiguration := graphmodels.NewVerifiedIdUsageConfiguration()
isEnabledForTestOnly := false
verifiedIdUsageConfiguration.SetIsEnabledForTestOnly(&isEnabledForTestOnly) 
purpose := graphmodels.VERIFICATION_VERIFIEDIDUSAGECONFIGURATIONPURPOSE 
verifiedIdUsageConfiguration.SetPurpose(&purpose) 

verifiedIdUsageConfigurations := []graphmodels.VerifiedIdUsageConfigurationable {
	verifiedIdUsageConfiguration,
}
requestBody.SetVerifiedIdUsageConfigurations(verifiedIdUsageConfigurations)
additionalData := map[string]interface{}{
mobileDriversLicenseConfiguration := graph.New()
	acceptedRegions := []string {
		"region-code",
	}
	mobileDriversLicenseConfiguration.SetAcceptedRegions(acceptedRegions)
documentStandard := "document-standard"
mobileDriversLicenseConfiguration.SetDocumentStandard(&documentStandard) 
	requestBody.SetMobileDriversLicenseConfiguration(mobileDriversLicenseConfiguration)
selfServiceIssuance := graph.New()
	isEnabled := true
selfServiceIssuance.SetIsEnabled(&isEnabled) 
issuanceUrl := "https://verifiedid.contoso.com/issue"
selfServiceIssuance.SetIssuanceUrl(&issuanceUrl) 
	requestBody.SetSelfServiceIssuance(selfServiceIssuance)
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
profiles, err := graphClient.Identity().VerifiedId().Profiles().ByVerifiedIdProfileId("verifiedIdProfile-id").Patch(context.Background(), requestBody, nil)


```