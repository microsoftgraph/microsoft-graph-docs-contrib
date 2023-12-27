---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Community community = new Community();
community.displayName = "Financial Advice for Software Engineers";
community.description = "A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for there clients.";
community.privacy = CommunityPrivacy.PUBLIC;

graphClient.employeeExperience().communities()
	.buildRequest()
	.post(community);

```