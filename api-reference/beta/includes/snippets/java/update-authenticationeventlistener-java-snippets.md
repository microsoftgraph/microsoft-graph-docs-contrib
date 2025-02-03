---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnTokenIssuanceStartListener authenticationEventListener = new OnTokenIssuanceStartListener();
authenticationEventListener.setOdataType("#microsoft.graph.onTokenIssuanceStartListener");
AuthenticationConditions conditions = new AuthenticationConditions();
AuthenticationConditionsApplications applications = new AuthenticationConditionsApplications();
applications.setIncludeAllApplications(false);
conditions.setApplications(applications);
authenticationEventListener.setConditions(conditions);
authenticationEventListener.setPriority(500);
AuthenticationEventListener result = graphClient.identity().authenticationEventListeners().byAuthenticationEventListenerId("{authenticationEventListener-id}").patch(authenticationEventListener);


```