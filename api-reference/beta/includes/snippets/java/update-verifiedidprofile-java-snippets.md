---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

VerifiedIdProfile verifiedIdProfile = new VerifiedIdProfile();
VerifiedIdProfileConfiguration verifiedIdProfileConfiguration = new VerifiedIdProfileConfiguration();
verifiedIdProfileConfiguration.setMethodType(VerifiedIdMethodType.TenantCustomCredential);
verifiedIdProfileConfiguration.setManifestUrl("https://verifiedid.contoso.com/manifest");
verifiedIdProfile.setVerifiedIdProfileConfiguration(verifiedIdProfileConfiguration);
MobileDriversLicenseConfiguration mobileDriversLicenseConfiguration = new MobileDriversLicenseConfiguration();
LinkedList<String> acceptedRegions = new LinkedList<String>();
acceptedRegions.add("region-code");
mobileDriversLicenseConfiguration.setAcceptedRegions(acceptedRegions);
mobileDriversLicenseConfiguration.setDocumentStandard("document-standard");
verifiedIdProfile.setMobileDriversLicenseConfiguration(mobileDriversLicenseConfiguration);
VerifiedIdSelfServiceIssuance selfServiceIssuance = new VerifiedIdSelfServiceIssuance();
selfServiceIssuance.setIsEnabled(true);
selfServiceIssuance.setIssuanceUrl("https://verifiedid.contoso.com/issue");
verifiedIdProfile.setSelfServiceIssuance(selfServiceIssuance);
LinkedList<VerifiedIdUsageConfiguration> verifiedIdUsageConfigurations = new LinkedList<VerifiedIdUsageConfiguration>();
VerifiedIdUsageConfiguration verifiedIdUsageConfiguration = new VerifiedIdUsageConfiguration();
verifiedIdUsageConfiguration.setIsEnabledForTestOnly(false);
verifiedIdUsageConfiguration.setPurpose(VerifiedIdUsageConfigurationPurpose.Verification);
verifiedIdUsageConfigurations.add(verifiedIdUsageConfiguration);
verifiedIdProfile.setVerifiedIdUsageConfigurations(verifiedIdUsageConfigurations);
VerifiedIdProfile result = graphClient.identity().verifiedId().profiles().byVerifiedIdProfileId("{verifiedIdProfile-id}").patch(verifiedIdProfile);


```