---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Community community = new Community();
community.displayName = "Financial Advice for Software Engineers";
community.description = "A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for there clients.";
community.privacy = CommunityPrivacy.PUBLIC;
community.additionalDataManager().put("owners@odata.bind", new JsonPrimitive("[  \"https://graph.microsoft.com/beta/users/26be1845-4119-4801-a799-aea79d09f1a2\"]"));

graphClient.employeeExperience().communities()
	.buildRequest()
	.post(community);

```