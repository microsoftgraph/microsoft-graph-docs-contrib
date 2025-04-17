---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ConditionalAccessPolicy conditionalAccessPolicy = new ConditionalAccessPolicy();
ConditionalAccessConditionSet conditions = new ConditionalAccessConditionSet();
ConditionalAccessApplications applications = new ConditionalAccessApplications();
LinkedList<String> includeApplications = new LinkedList<String>();
includeApplications.add("5dc48733-b5df-475c-a49b-fa307ef00853");
applications.setIncludeApplications(includeApplications);
conditions.setApplications(applications);
ConditionalAccessUsers users = new ConditionalAccessUsers();
LinkedList<String> includeUsers = new LinkedList<String>();
includeUsers.add("00aa00aa-bb11-cc22-dd33-44ee44ee44ee");
users.setIncludeUsers(includeUsers);
conditions.setUsers(users);
conditionalAccessPolicy.setConditions(conditions);
conditionalAccessPolicy.setDisplayName("UserA Access to AI and Bing");
ConditionalAccessSessionControls sessionControls = new ConditionalAccessSessionControls();
GlobalSecureAccessFilteringProfileSessionControl globalSecureAccessFilteringProfile = new GlobalSecureAccessFilteringProfileSessionControl();
globalSecureAccessFilteringProfile.setProfileId("dddddddd-9999-0000-1111-eeeeeeeeeeee");
globalSecureAccessFilteringProfile.setIsEnabled(true);
sessionControls.setGlobalSecureAccessFilteringProfile(globalSecureAccessFilteringProfile);
conditionalAccessPolicy.setSessionControls(sessionControls);
conditionalAccessPolicy.setState(ConditionalAccessPolicyState.Enabled);
ConditionalAccessPolicy result = graphClient.identity().conditionalAccess().policies().post(conditionalAccessPolicy);


```