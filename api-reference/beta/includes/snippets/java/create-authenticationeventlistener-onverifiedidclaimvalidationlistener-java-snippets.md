---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnVerifiedIdClaimValidationListener authenticationEventListener = new OnVerifiedIdClaimValidationListener();
authenticationEventListener.setOdataType("#microsoft.graph.onVerifiedIdClaimValidationListener");
authenticationEventListener.setDisplayName("Verified ID Claim Validation Listener");
authenticationEventListener.setPriority(500);
AuthenticationConditions conditions = new AuthenticationConditions();
AuthenticationConditionsApplications applications = new AuthenticationConditionsApplications();
applications.setIncludeAllApplications(false);
LinkedList<AuthenticationConditionApplication> includeApplications = new LinkedList<AuthenticationConditionApplication>();
AuthenticationConditionApplication authenticationConditionApplication = new AuthenticationConditionApplication();
authenticationConditionApplication.setAppId("63856651-13d9-4784-9abf-20758d509e19");
includeApplications.add(authenticationConditionApplication);
applications.setIncludeApplications(includeApplications);
conditions.setApplications(applications);
authenticationEventListener.setConditions(conditions);
authenticationEventListener.setAuthenticationEventsFlowId("5a8e8f57-82b2-4cbf-b145-3e6e0c154897");
OnVerifiedIdClaimValidationCustomExtensionHandler handler = new OnVerifiedIdClaimValidationCustomExtensionHandler();
handler.setOdataType("#microsoft.graph.onVerifiedIdClaimValidationCustomExtensionHandler");
CustomExtensionOverwriteConfiguration configuration = new CustomExtensionOverwriteConfiguration();
configuration.setOdataType("#microsoft.graph.customExtensionOverwriteConfiguration");
CustomExtensionClientConfiguration clientConfiguration = new CustomExtensionClientConfiguration();
clientConfiguration.setOdataType("#microsoft.graph.customExtensionClientConfiguration");
clientConfiguration.setMaximumRetries(1);
clientConfiguration.setTimeoutInMilliseconds(2000);
configuration.setClientConfiguration(clientConfiguration);
CustomExtensionBehaviorOnError behaviorOnError = new CustomExtensionBehaviorOnError();
behaviorOnError.setOdataType("#microsoft.graph.customExtensionBehaviorOnError");
configuration.setBehaviorOnError(behaviorOnError);
handler.setConfiguration(configuration);
OnVerifiedIdClaimValidationCustomExtension customExtension = new OnVerifiedIdClaimValidationCustomExtension();
customExtension.setId("6a0a3429-be77-0aed-951e-1c8aed62bf8a");
handler.setCustomExtension(customExtension);
authenticationEventListener.setHandler(handler);
AuthenticationEventListener result = graphClient.identity().authenticationEventListeners().post(authenticationEventListener);


```