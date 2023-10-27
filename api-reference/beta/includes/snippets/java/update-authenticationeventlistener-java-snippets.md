---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnTokenIssuanceStartListener authenticationEventListener = new OnTokenIssuanceStartListener();
AuthenticationConditions conditions = new AuthenticationConditions();
AuthenticationConditionsApplications applications = new AuthenticationConditionsApplications();
applications.includeAllApplications = false;
conditions.applications = applications;
authenticationEventListener.conditions = conditions;
authenticationEventListener.priority = 500;

graphClient.identity().authenticationEventListeners("990d94e5-cc8f-4c4b-97b4-27e2678aac28")
	.buildRequest()
	.patch(authenticationEventListener);

```