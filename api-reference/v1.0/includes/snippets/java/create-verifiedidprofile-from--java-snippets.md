---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

VerifiedIdProfile verifiedIdProfile = new VerifiedIdProfile();
verifiedIdProfile.setName("Contoso Verified ID");
verifiedIdProfile.setDescription("Contoso Verified Identity");
verifiedIdProfile.setLastModifiedDateTime(null);
verifiedIdProfile.setState(VerifiedIdProfileState.Enabled);
verifiedIdProfile.setVerifierDid("did:web:eu.did-dev.contoso.io");
verifiedIdProfile.setPriority(0);
VerifiedIdProfileConfiguration verifiedIdProfileConfiguration = new VerifiedIdProfileConfiguration();
verifiedIdProfileConfiguration.setType("verifiedIdentity");
verifiedIdProfileConfiguration.setAcceptedIssuer("did:web:eu.did-dev.contoso.io");
verifiedIdProfileConfiguration.setClaimBindingSource(ClaimBindingSource.Directory);
LinkedList<ClaimBinding> claimBindings = new LinkedList<ClaimBinding>();
ClaimBinding claimBinding = new ClaimBinding();
claimBinding.setMatchConfidenceLevel(MatchConfidenceLevel.Exact);
claimBinding.setSourceAttribute("First name");
claimBinding.setVerifiedIdClaim("vc.credentialSubject.firstName");
claimBindings.add(claimBinding);
ClaimBinding claimBinding1 = new ClaimBinding();
claimBinding1.setMatchConfidenceLevel(MatchConfidenceLevel.Exact);
claimBinding1.setSourceAttribute("Last name");
claimBinding1.setVerifiedIdClaim("vc.credentialSubject.lastName");
claimBindings.add(claimBinding1);
verifiedIdProfileConfiguration.setClaimBindings(claimBindings);
ClaimValidation claimValidation = new ClaimValidation();
claimValidation.setIsEnabled(true);
claimValidation.setCustomExtensionId("00aa00aa-bb11-cc22-dd33-44ee44ee44ee");
verifiedIdProfileConfiguration.setClaimValidation(claimValidation);
verifiedIdProfile.setVerifiedIdProfileConfiguration(verifiedIdProfileConfiguration);
FaceCheckConfiguration faceCheckConfiguration = new FaceCheckConfiguration();
faceCheckConfiguration.setIsEnabled(true);
faceCheckConfiguration.setSourcePhotoClaimName("portrait");
verifiedIdProfile.setFaceCheckConfiguration(faceCheckConfiguration);
LinkedList<VerifiedIdUsageConfiguration> verifiedIdUsageConfigurations = new LinkedList<VerifiedIdUsageConfiguration>();
VerifiedIdUsageConfiguration verifiedIdUsageConfiguration = new VerifiedIdUsageConfiguration();
verifiedIdUsageConfiguration.setIsEnabledForTestOnly(true);
verifiedIdUsageConfiguration.setPurpose(VerifiedIdUsageConfigurationPurpose.Recovery);
verifiedIdUsageConfigurations.add(verifiedIdUsageConfiguration);
verifiedIdProfile.setVerifiedIdUsageConfigurations(verifiedIdUsageConfigurations);
VerifiedIdProfile result = graphClient.identity().verifiedId().profiles().post(verifiedIdProfile);


```