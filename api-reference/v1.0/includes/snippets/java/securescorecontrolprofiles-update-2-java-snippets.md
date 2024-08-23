---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SecureScoreControlProfile secureScoreControlProfile = new SecureScoreControlProfile();
SecurityVendorInformation vendorInformation = new SecurityVendorInformation();
vendorInformation.setProvider("SecureScore");
vendorInformation.setProviderVersion(null);
vendorInformation.setSubProvider(null);
vendorInformation.setVendor("Microsoft");
secureScoreControlProfile.setVendorInformation(vendorInformation);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("assignedTo", "");
additionalData.put("comment", "control is reviewed");
additionalData.put("state", "Reviewed");
secureScoreControlProfile.setAdditionalData(additionalData);
SecureScoreControlProfile result = graphClient.security().secureScoreControlProfiles().bySecureScoreControlProfileId("{secureScoreControlProfile-id}").patch(secureScoreControlProfile);


```