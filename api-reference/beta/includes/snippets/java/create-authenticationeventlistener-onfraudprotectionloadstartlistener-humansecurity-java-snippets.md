---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnFraudProtectionLoadStartListener authenticationEventListener = new OnFraudProtectionLoadStartListener();
authenticationEventListener.setOdataType("#microsoft.graph.onFraudProtectionLoadStartListener");
AuthenticationConditions conditions = new AuthenticationConditions();
AuthenticationConditionsApplications applications = new AuthenticationConditionsApplications();
LinkedList<AuthenticationConditionApplication> includeApplications = new LinkedList<AuthenticationConditionApplication>();
AuthenticationConditionApplication authenticationConditionApplication = new AuthenticationConditionApplication();
authenticationConditionApplication.setAppId("0001111-aaaa-2222-bbbb-3333cccc4444");
includeApplications.add(authenticationConditionApplication);
applications.setIncludeApplications(includeApplications);
conditions.setApplications(applications);
authenticationEventListener.setConditions(conditions);
OnFraudProtectionLoadStartExternalUsersAuthHandler handler = new OnFraudProtectionLoadStartExternalUsersAuthHandler();
handler.setOdataType("#microsoft.graph.onFraudProtectionLoadStartExternalUsersAuthHandler");
FraudProtectionProviderConfiguration signUp = new FraudProtectionProviderConfiguration();
signUp.setOdataType("#microsoft.graph.fraudProtectionProviderConfiguration");
HumanSecurityFraudProtectionProvider fraudProtectionProvider = new HumanSecurityFraudProtectionProvider();
fraudProtectionProvider.setOdataType("#microsoft.graph.humanSecurityFraudProtectionProvider");
fraudProtectionProvider.setId("fabe5100-cc02-46c1-bd0e-ce885fe367fd");
signUp.setFraudProtectionProvider(fraudProtectionProvider);
handler.setSignUp(signUp);
authenticationEventListener.setHandler(handler);
AuthenticationEventListener result = graphClient.identity().authenticationEventListeners().post(authenticationEventListener);


```