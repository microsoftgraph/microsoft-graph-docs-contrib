---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

User user = new User();
user.setAccountEnabled(true);
user.setDisplayName("Adele Vance");
user.setMailNickname("AdeleV");
user.setUserPrincipalName("AdeleV@contoso.com");
PasswordProfile passwordProfile = new PasswordProfile();
passwordProfile.setForceChangePasswordNextSignIn(false);
passwordProfile.setPassword("xWwvJ]6NMw+bWH-d");
user.setPasswordProfile(passwordProfile);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker", "JobGroupN");
user.setAdditionalData(additionalData);
User result = graphClient.users().post(user);


```