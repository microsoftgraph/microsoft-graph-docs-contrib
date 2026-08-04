---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

VerifiedIdProfile verifiedIdProfile = new VerifiedIdProfile();
VerifiedIdProfileConfiguration verifiedIdProfileConfiguration = new VerifiedIdProfileConfiguration();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("methodType", "tenantCustomCredential");
additionalData.put("manifestUrl", "https://verifiedid.contoso.com/manifest");
verifiedIdProfileConfiguration.setAdditionalData(additionalData);
verifiedIdProfile.setVerifiedIdProfileConfiguration(verifiedIdProfileConfiguration);
LinkedList<VerifiedIdUsageConfiguration> verifiedIdUsageConfigurations = new LinkedList<VerifiedIdUsageConfiguration>();
VerifiedIdUsageConfiguration verifiedIdUsageConfiguration = new VerifiedIdUsageConfiguration();
verifiedIdUsageConfiguration.setIsEnabledForTestOnly(false);
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
VerifiedIdProfile result = graphClient.identity().verifiedId().profiles().byVerifiedIdProfileId("{verifiedIdProfile-id}").patch(verifiedIdProfile);


```