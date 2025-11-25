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
LinkedList<AuthenticationConditionApplication> includeApplications = new LinkedList<AuthenticationConditionApplication>();
AuthenticationConditionApplication authenticationConditionApplication = new AuthenticationConditionApplication();
authenticationConditionApplication.setAppId("0001111-aaaa-2222-bbbb-3333cccc4444");
includeApplications.add(authenticationConditionApplication);
applications.setIncludeApplications(includeApplications);
conditions.setApplications(applications);
authenticationEventListener.setConditions(conditions);
authenticationEventListener.setPriority(500);
OnTokenIssuanceStartCustomExtensionHandler handler = new OnTokenIssuanceStartCustomExtensionHandler();
handler.setOdataType("#microsoft.graph.onTokenIssuanceStartCustomExtensionHandler");
OnTokenIssuanceStartCustomExtension customExtension = new OnTokenIssuanceStartCustomExtension();
customExtension.setId("6fc5012e-7665-43d6-9708-4370863f4e6e");
handler.setCustomExtension(customExtension);
authenticationEventListener.setHandler(handler);
AuthenticationEventListener result = graphClient.identity().authenticationEventListeners().post(authenticationEventListener);


```