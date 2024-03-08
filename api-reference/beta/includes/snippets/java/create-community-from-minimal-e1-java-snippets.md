---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Community community = new Community();
community.setDisplayName("Financial Advice for Software Engineers");
community.setDescription("A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for their clients.");
community.setPrivacy(CommunityPrivacy.Public);
Community result = graphClient.employeeExperience().communities().post(community);


```