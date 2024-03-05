---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SecureScoreControlProfile secureScoreControlProfile = new SecureScoreControlProfile();
secureScoreControlProfile.setControlStateUpdates("controlStateUpdates-value");
SecureScoreControlProfile result = graphClient.security().secureScoreControlProfiles().bySecureScoreControlProfileId("{secureScoreControlProfile-id}").patch(secureScoreControlProfile);


```