---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnAttributeCollectionStartListener authenticationEventListener = new OnAttributeCollectionStartListener();
authenticationEventListener.setOdataType("#microsoft.graph.onAttributeCollectionStartListener");
authenticationEventListener.setPriority(500);
AuthenticationConditions conditions = new AuthenticationConditions();
AuthenticationConditionsApplications applications = new AuthenticationConditionsApplications();
applications.setIncludeAllApplications(false);
LinkedList<AuthenticationConditionApplication> includeApplications = new LinkedList<AuthenticationConditionApplication>();
AuthenticationConditionApplication authenticationConditionApplication = new AuthenticationConditionApplication();
authenticationConditionApplication.setAppId("a7eed01f-a333-4983-bc6b-d359ec9e5eef");
includeApplications.add(authenticationConditionApplication);
applications.setIncludeApplications(includeApplications);
conditions.setApplications(applications);
authenticationEventListener.setConditions(conditions);
OnAttributeCollectionStartCustomExtensionHandler handler = new OnAttributeCollectionStartCustomExtensionHandler();
handler.setOdataType("#microsoft.graph.onAttributeCollectionStartCustomExtensionHandler");
OnAttributeCollectionStartCustomExtension customExtension = new OnAttributeCollectionStartCustomExtension();
customExtension.setId("2d9c3e8d-88a9-444e-8c4c-f0c6c4fe1c02");
handler.setCustomExtension(customExtension);
authenticationEventListener.setHandler(handler);
AuthenticationEventListener result = graphClient.identity().authenticationEventListeners().post(authenticationEventListener);


```