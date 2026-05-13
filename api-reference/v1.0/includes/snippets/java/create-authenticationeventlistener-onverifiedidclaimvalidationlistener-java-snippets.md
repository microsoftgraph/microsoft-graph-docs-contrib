---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthenticationEventListener authenticationEventListener = new AuthenticationEventListener();
authenticationEventListener.setOdataType("#microsoft.graph.onVerifiedIdClaimValidationListener");
authenticationEventListener.setDisplayName("Verified ID Claim Validation Listener");
AuthenticationConditions conditions = new AuthenticationConditions();
AuthenticationConditionsApplications applications = new AuthenticationConditionsApplications();
LinkedList<AuthenticationConditionApplication> includeApplications = new LinkedList<AuthenticationConditionApplication>();
AuthenticationConditionApplication authenticationConditionApplication = new AuthenticationConditionApplication();
authenticationConditionApplication.setAppId("63856651-13d9-4784-9abf-20758d509e19");
includeApplications.add(authenticationConditionApplication);
applications.setIncludeApplications(includeApplications);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("includeAllApplications", false);
applications.setAdditionalData(additionalData);
conditions.setApplications(applications);
authenticationEventListener.setConditions(conditions);
authenticationEventListener.setAuthenticationEventsFlowId("5a8e8f57-82b2-4cbf-b145-3e6e0c154897");
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("priority", 500);
 handler = new ();
handler.setOdataType("#microsoft.graph.onVerifiedIdClaimValidationCustomExtensionHandler");
 configuration = new ();
configuration.setOdataType("#microsoft.graph.customExtensionOverwriteConfiguration");
 clientConfiguration = new ();
clientConfiguration.setOdataType("#microsoft.graph.customExtensionClientConfiguration");
clientConfiguration.setMaximumRetries(1);
clientConfiguration.setTimeoutInMilliseconds(2000);
configuration.setClientConfiguration(clientConfiguration);
 behaviorOnError = new ();
behaviorOnError.setOdataType("#microsoft.graph.customExtensionBehaviorOnError");
configuration.setBehaviorOnError(behaviorOnError);
handler.setConfiguration(configuration);
 customExtension = new ();
customExtension.setId("6a0a3429-be77-0aed-951e-1c8aed62bf8a");
handler.setCustomExtension(customExtension);
additionalData1.put("handler", handler);
authenticationEventListener.setAdditionalData(additionalData1);
AuthenticationEventListener result = graphClient.identity().authenticationEventListeners().post(authenticationEventListener);


```