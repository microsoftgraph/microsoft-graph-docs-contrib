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
 extkmpdyld2GraphLearnCourses = new ();
extkmpdyld2GraphLearnCourses.setCourseId(100);
extkmpdyld2GraphLearnCourses.setCourseName("Explore Microsoft Graph");
extkmpdyld2GraphLearnCourses.setCourseType("Online");
additionalData.put("extkmpdyld2_graphLearnCourses", extkmpdyld2GraphLearnCourses);
user.setAdditionalData(additionalData);
User result = graphClient.users().post(user);


```