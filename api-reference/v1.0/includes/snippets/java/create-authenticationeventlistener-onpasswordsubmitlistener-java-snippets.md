---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthenticationEventListener authenticationEventListener = new AuthenticationEventListener();
authenticationEventListener.setOdataType("#microsoft.graph.onPasswordSubmitListener");
authenticationEventListener.setDisplayName("JIT migration listener");
AuthenticationConditions conditions = new AuthenticationConditions();
AuthenticationConditionsApplications applications = new AuthenticationConditionsApplications();
LinkedList<AuthenticationConditionApplication> includeApplications = new LinkedList<AuthenticationConditionApplication>();
AuthenticationConditionApplication authenticationConditionApplication = new AuthenticationConditionApplication();
authenticationConditionApplication.setAppId("00011111-aaaa-2222-bbbb-3333cccc4444");
includeApplications.add(authenticationConditionApplication);
applications.setIncludeApplications(includeApplications);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("includeAllApplications", false);
applications.setAdditionalData(additionalData);
conditions.setApplications(applications);
authenticationEventListener.setConditions(conditions);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
 handler = new ();
handler.setOdataType("#microsoft.graph.onPasswordMigrationCustomExtensionHandler");
handler.setMigrationPropertyId("extension_b7b1c57b532f40b8b5ed4b7a7ba67401_requiresMigration");
 customExtension = new ();
customExtension.setId("6fc5012e-7665-43d6-9708-4370863f4e6e");
handler.setCustomExtension(customExtension);
additionalData1.put("handler", handler);
authenticationEventListener.setAdditionalData(additionalData1);
AuthenticationEventListener result = graphClient.identity().authenticationEventListeners().post(authenticationEventListener);


```