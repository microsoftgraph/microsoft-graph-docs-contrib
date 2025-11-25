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
name := "Contoso Verified ID"
requestBody.SetName(&name) 
description := "Contoso Verified Identity"
requestBody.SetDescription(&description) 
lastModifiedDateTime := null
requestBody.SetLastModifiedDateTime(&lastModifiedDateTime) 
state := graphmodels.ENABLED_VERIFIEDIDPROFILESTATE 
requestBody.SetState(&state) 
verifierDid := "did:web:eu.did-dev.contoso.io"
requestBody.SetVerifierDid(&verifierDid) 
priority := int32(0)
requestBody.SetPriority(&priority) 
verifiedIdProfileConfiguration := graphmodels.NewVerifiedIdProfileConfiguration()
type := "verifiedIdentity"
verifiedIdProfileConfiguration.SetType(&type) 
acceptedIssuer := "did:web:eu.did-dev.contoso.io"
verifiedIdProfileConfiguration.SetAcceptedIssuer(&acceptedIssuer) 
claimBindingSource := graphmodels.DIRECTORY_CLAIMBINDINGSOURCE 
verifiedIdProfileConfiguration.SetClaimBindingSource(&claimBindingSource) 


claimBinding := graphmodels.NewClaimBinding()
sourceAttribute := "First name"
claimBinding.SetSourceAttribute(&sourceAttribute) 
verifiedIdClaim := "vc.credentialSubject.firstName"
claimBinding.SetVerifiedIdClaim(&verifiedIdClaim) 
claimBinding1 := graphmodels.NewClaimBinding()
sourceAttribute := "Last name"
claimBinding1.SetSourceAttribute(&sourceAttribute) 
verifiedIdClaim := "vc.credentialSubject.lastName"
claimBinding1.SetVerifiedIdClaim(&verifiedIdClaim) 

claimBindings := []graphmodels.ClaimBindingable {
	claimBinding,
	claimBinding1,
}
verifiedIdProfileConfiguration.SetClaimBindings(claimBindings)
requestBody.SetVerifiedIdProfileConfiguration(verifiedIdProfileConfiguration)
faceCheckConfiguration := graphmodels.NewFaceCheckConfiguration()
isEnabled := true
faceCheckConfiguration.SetIsEnabled(&isEnabled) 
sourcePhotoClaimName := "portrait"
faceCheckConfiguration.SetSourcePhotoClaimName(&sourcePhotoClaimName) 
requestBody.SetFaceCheckConfiguration(faceCheckConfiguration)


verifiedIdUsageConfiguration := graphmodels.NewVerifiedIdUsageConfiguration()
isEnabledForTestOnly := true
verifiedIdUsageConfiguration.SetIsEnabledForTestOnly(&isEnabledForTestOnly) 
purpose := graphmodels.RECOVERY_VERIFIEDIDUSAGECONFIGURATIONPURPOSE 
verifiedIdUsageConfiguration.SetPurpose(&purpose) 

verifiedIdUsageConfigurations := []graphmodels.VerifiedIdUsageConfigurationable {
	verifiedIdUsageConfiguration,
}
requestBody.SetVerifiedIdUsageConfigurations(verifiedIdUsageConfigurations)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
profiles, err := graphClient.Identity().VerifiedId().Profiles().Post(context.Background(), requestBody, nil)


```