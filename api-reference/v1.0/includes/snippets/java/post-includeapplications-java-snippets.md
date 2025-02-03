---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthenticationConditionApplication authenticationConditionApplication = new AuthenticationConditionApplication();
authenticationConditionApplication.setOdataType("#microsoft.graph.authenticationConditionApplication");
authenticationConditionApplication.setAppId("63856651-13d9-4784-9abf-20758d509e19");
AuthenticationConditionApplication result = graphClient.identity().authenticationEventsFlows().byAuthenticationEventsFlowId("{authenticationEventsFlow-id}").conditions().applications().includeApplications().post(authenticationConditionApplication);


```