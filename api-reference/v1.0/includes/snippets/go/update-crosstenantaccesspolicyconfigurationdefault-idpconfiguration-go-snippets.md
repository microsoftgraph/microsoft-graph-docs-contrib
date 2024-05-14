---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCrossTenantAccessPolicyConfigurationDefault()
invitationRedemptionIdentityProviderConfiguration := graphmodels.NewDefaultInvitationRedemptionIdentityProviderConfiguration()
primaryIdentityProviderPrecedenceOrder := []graphmodels.B2bIdentityProvidersTypeable {
	b2bIdentityProvidersType := graphmodels.EXTERNALFEDERATION_B2BIDENTITYPROVIDERSTYPE 
	invitationRedemptionIdentityProviderConfiguration.SetB2bIdentityProvidersType(&b2bIdentityProvidersType) 
	b2bIdentityProvidersType := graphmodels.AZUREACTIVEDIRECTORY_B2BIDENTITYPROVIDERSTYPE 
	invitationRedemptionIdentityProviderConfiguration.SetB2bIdentityProvidersType(&b2bIdentityProvidersType) 
	b2bIdentityProvidersType := graphmodels.SOCIALIDENTITYPROVIDERS_B2BIDENTITYPROVIDERSTYPE 
	invitationRedemptionIdentityProviderConfiguration.SetB2bIdentityProvidersType(&b2bIdentityProvidersType)
}
invitationRedemptionIdentityProviderConfiguration.SetPrimaryIdentityProviderPrecedenceOrder(primaryIdentityProviderPrecedenceOrder)
fallbackIdentityProvider := graphmodels.DEFAULTCONFIGUREDIDP_B2BIDENTITYPROVIDERSTYPE 
invitationRedemptionIdentityProviderConfiguration.SetFallbackIdentityProvider(&fallbackIdentityProvider) 
requestBody.SetInvitationRedemptionIdentityProviderConfiguration(invitationRedemptionIdentityProviderConfiguration)

default, err := graphClient.Policies().CrossTenantAccessPolicy().Default().Patch(context.Background(), requestBody, nil)


```