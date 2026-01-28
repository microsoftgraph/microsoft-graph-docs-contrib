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


verifiedIdUsageConfiguration := graphmodels.NewVerifiedIdUsageConfiguration()
isEnabledForTestOnly := false
verifiedIdUsageConfiguration.SetIsEnabledForTestOnly(&isEnabledForTestOnly) 
purpose := graphmodels.RECOVERY_VERIFIEDIDUSAGECONFIGURATIONPURPOSE 
verifiedIdUsageConfiguration.SetPurpose(&purpose) 

verifiedIdUsageConfigurations := []graphmodels.VerifiedIdUsageConfigurationable {
	verifiedIdUsageConfiguration,
}
requestBody.SetVerifiedIdUsageConfigurations(verifiedIdUsageConfigurations)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
profiles, err := graphClient.Identity().VerifiedId().Profiles().ByVerifiedIdProfileId("verifiedIdProfile-id").Patch(context.Background(), requestBody, nil)


```