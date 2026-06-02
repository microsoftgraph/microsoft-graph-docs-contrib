---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

VerifiedIdProfile verifiedIdProfile = new VerifiedIdProfile();
LinkedList<VerifiedIdUsageConfiguration> verifiedIdUsageConfigurations = new LinkedList<VerifiedIdUsageConfiguration>();
VerifiedIdUsageConfiguration verifiedIdUsageConfiguration = new VerifiedIdUsageConfiguration();
verifiedIdUsageConfiguration.setIsEnabledForTestOnly(false);
verifiedIdUsageConfiguration.setPurpose(VerifiedIdUsageConfigurationPurpose.Recovery);
verifiedIdUsageConfigurations.add(verifiedIdUsageConfiguration);
verifiedIdProfile.setVerifiedIdUsageConfigurations(verifiedIdUsageConfigurations);
VerifiedIdProfile result = graphClient.identity().verifiedId().profiles().byVerifiedIdProfileId("{verifiedIdProfile-id}").patch(verifiedIdProfile);


```