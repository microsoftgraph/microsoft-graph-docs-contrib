---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExternalUserProfile externalUserProfile = new ExternalUserProfile();
externalUserProfile.setJobTitle("Contractor");
ExternalUserProfile result = graphClient.directory().externalUserProfiles().byExternalUserProfileId("{externalUserProfile-id}").patch(externalUserProfile);


```