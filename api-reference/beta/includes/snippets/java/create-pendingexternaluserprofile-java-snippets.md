---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PendingExternalUserProfile pendingExternalUserProfile = new PendingExternalUserProfile();
pendingExternalUserProfile.setPhoneNumber("+15555555555");
pendingExternalUserProfile.setDisplayName("Bob Henry");
PendingExternalUserProfile result = graphClient.directory().pendingExternalUserProfiles().post(pendingExternalUserProfile);


```