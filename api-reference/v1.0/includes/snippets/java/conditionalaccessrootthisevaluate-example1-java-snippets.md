---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.identity.conditionalaccess.evaluate.EvaluatePostRequestBody evaluatePostRequestBody = new com.microsoft.graph.identity.conditionalaccess.evaluate.EvaluatePostRequestBody();
UserSignIn signInIdentity = new UserSignIn();
signInIdentity.setOdataType("#microsoft.graph.userSignIn");
signInIdentity.setUserId("15dc174b-f34c-4588-ac45-61d6e05dce93");
evaluatePostRequestBody.setSignInIdentity(signInIdentity);
ApplicationContext signInContext = new ApplicationContext();
signInContext.setOdataType("#microsoft.graph.applicationContext");
LinkedList<String> includeApplications = new LinkedList<String>();
includeApplications.add("00000003-0000-0ff1-ce00-000000000000");
signInContext.setIncludeApplications(includeApplications);
evaluatePostRequestBody.setSignInContext(signInContext);
SignInConditions signInConditions = new SignInConditions();
signInConditions.setDevicePlatform(ConditionalAccessDevicePlatform.Android);
signInConditions.setClientAppType(ConditionalAccessClientApp.Browser);
signInConditions.setSignInRiskLevel(RiskLevel.High);
signInConditions.setUserRiskLevel(RiskLevel.High);
signInConditions.setCountry("US");
signInConditions.setIpAddress("40.77.182.32");
signInConditions.setInsiderRiskLevel(InsiderRiskLevel.Elevated);
AuthenticationFlow authenticationFlow = new AuthenticationFlow();
authenticationFlow.setTransferMethod(EnumSet.of(ConditionalAccessTransferMethods.DeviceCodeFlow));
signInConditions.setAuthenticationFlow(authenticationFlow);
DeviceInfo deviceInfo = new DeviceInfo();
deviceInfo.setIsCompliant(true);
signInConditions.setDeviceInfo(deviceInfo);
evaluatePostRequestBody.setSignInConditions(signInConditions);
evaluatePostRequestBody.setAppliedPoliciesOnly(true);
var result = graphClient.identity().conditionalAccess().evaluate().post(evaluatePostRequestBody);


```