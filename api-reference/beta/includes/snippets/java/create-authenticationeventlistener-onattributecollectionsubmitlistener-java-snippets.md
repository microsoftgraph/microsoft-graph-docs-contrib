---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnAttributeCollectionSubmitListener authenticationEventListener = new OnAttributeCollectionSubmitListener();
authenticationEventListener.setOdataType("#microsoft.graph.onAttributeCollectionSubmitListener");
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
OnAttributeCollectionSubmitCustomExtensionHandler handler = new OnAttributeCollectionSubmitCustomExtensionHandler();
handler.setOdataType("#microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler");
OnAttributeCollectionSubmitCustomExtension customExtension = new OnAttributeCollectionSubmitCustomExtension();
customExtension.setId("66867d1f-7824-4f38-aad1-75da1ad09ee2");
handler.setCustomExtension(customExtension);
authenticationEventListener.setHandler(handler);
AuthenticationEventListener result = graphClient.identity().authenticationEventListeners().post(authenticationEventListener);


```