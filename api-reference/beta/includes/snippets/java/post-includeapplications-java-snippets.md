---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationConditionApplication authenticationConditionApplication = new AuthenticationConditionApplication();
authenticationConditionApplication.appId = "63856651-13d9-4784-9abf-20758d509e19";

graphClient.identity().authenticationEventsFlows("0313cc37-d421-421d-857b-87804d61e33e").includeApplications()
	.buildRequest()
	.post(authenticationConditionApplication);

```