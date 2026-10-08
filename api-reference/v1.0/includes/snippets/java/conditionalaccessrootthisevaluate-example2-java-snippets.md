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
AuthContext signInContext = new AuthContext();
signInContext.setOdataType("#microsoft.graph.authContext");
signInContext.setAuthenticationContextValue("c37");
evaluatePostRequestBody.setSignInContext(signInContext);
SignInConditions signInConditions = new SignInConditions();
signInConditions.setDevicePlatform(ConditionalAccessDevicePlatform.Windows);
signInConditions.setClientAppType(ConditionalAccessClientApp.MobileAppsAndDesktopClients);
signInConditions.setSignInRiskLevel(RiskLevel.Medium);
signInConditions.setUserRiskLevel(RiskLevel.None);
signInConditions.setCountry("US");
signInConditions.setIpAddress("40.77.182.32");
signInConditions.setInsiderRiskLevel(InsiderRiskLevel.Moderate);
AuthenticationFlow authenticationFlow = new AuthenticationFlow();
authenticationFlow.setTransferMethod(EnumSet.of(ConditionalAccessTransferMethods.AuthenticationTransfer));
signInConditions.setAuthenticationFlow(authenticationFlow);
DeviceInfo deviceInfo = new DeviceInfo();
deviceInfo.setProfileType("Standard");
signInConditions.setDeviceInfo(deviceInfo);
evaluatePostRequestBody.setSignInConditions(signInConditions);
evaluatePostRequestBody.setAppliedPoliciesOnly(true);
var result = graphClient.identity().conditionalAccess().evaluate().post(evaluatePostRequestBody);


```