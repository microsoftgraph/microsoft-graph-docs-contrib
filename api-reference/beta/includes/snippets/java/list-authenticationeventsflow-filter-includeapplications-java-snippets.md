---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationEventsFlowCollectionPage authenticationEventsFlows = graphClient.identity().authenticationEventsFlows()
	.buildRequest()
	.filter("microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/conditions/applications/includeApplications/any(appId:appId/appId eq '63856651-13d9-4784-9abf-20758d509e19')")
	.get();

```