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
claimBinding.setSourceAttribute("First name");
claimBinding.setVerifiedIdClaim("vc.credentialSubject.firstName");
claimBindings.add(claimBinding);
ClaimBinding claimBinding1 = new ClaimBinding();
claimBinding1.setSourceAttribute("Last name");
claimBinding1.setVerifiedIdClaim("vc.credentialSubject.lastName");
claimBindings.add(claimBinding1);
verifiedIdProfileConfiguration.setClaimBindings(claimBindings);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("methodType", "tenantCustomCredential");
additionalData.put("manifestUrl", "https://verifiedid.contoso.com/manifest");
verifiedIdProfileConfiguration.setAdditionalData(additionalData);
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
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
 mobileDriversLicenseConfiguration = new ();
LinkedList<String> acceptedRegions = new LinkedList<String>();
acceptedRegions.add("region-code");
mobileDriversLicenseConfiguration.setAcceptedRegions(acceptedRegions);
mobileDriversLicenseConfiguration.setDocumentStandard("document-standard");
additionalData1.put("mobileDriversLicenseConfiguration", mobileDriversLicenseConfiguration);
 selfServiceIssuance = new ();
selfServiceIssuance.setIsEnabled(true);
selfServiceIssuance.setIssuanceUrl("https://verifiedid.contoso.com/issue");
additionalData1.put("selfServiceIssuance", selfServiceIssuance);
verifiedIdProfile.setAdditionalData(additionalData1);
VerifiedIdProfile result = graphClient.identity().verifiedId().profiles().post(verifiedIdProfile);


```