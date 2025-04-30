---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identity.conditionalaccess.evaluate.EvaluatePostRequestBody evaluatePostRequestBody = new com.microsoft.graph.beta.identity.conditionalaccess.evaluate.EvaluatePostRequestBody();
UserSignIn signInIdentity = new UserSignIn();
signInIdentity.setOdataType("#microsoft.graph.userSignIn");
signInIdentity.setUserId("15dc174b-f34c-4588-ac45-61d6e05dce93");
evaluatePostRequestBody.setSignInIdentity(signInIdentity);
UserActionContext signInContext = new UserActionContext();
signInContext.setOdataType("#microsoft.graph.userActionContext");
signInContext.setUserAction(UserAction.RegisterSecurityInformation);
evaluatePostRequestBody.setSignInContext(signInContext);
SignInConditions signInConditions = new SignInConditions();
signInConditions.setDevicePlatform(ConditionalAccessDevicePlatform.MacOS);
signInConditions.setClientAppType(ConditionalAccessClientApp.Browser);
signInConditions.setSignInRiskLevel(RiskLevel.Low);
signInConditions.setUserRiskLevel(RiskLevel.High);
signInConditions.setServicePrincipalRiskLevel(RiskLevel.None);
signInConditions.setCountry("CA");
signInConditions.setIpAddress("40.77.182.32");
signInConditions.setInsiderRiskLevel(InsiderRiskLevel.Minor);
AuthenticationFlow authenticationFlow = new AuthenticationFlow();
authenticationFlow.setTransferMethod(EnumSet.of(ConditionalAccessTransferMethods.DeviceCodeFlow));
signInConditions.setAuthenticationFlow(authenticationFlow);
DeviceInfo deviceInfo = new DeviceInfo();
deviceInfo.setTrustType("EntraID");
signInConditions.setDeviceInfo(deviceInfo);
evaluatePostRequestBody.setSignInConditions(signInConditions);
evaluatePostRequestBody.setAppliedPoliciesOnly(true);
var result = graphClient.identity().conditionalAccess().evaluate().post(evaluatePostRequestBody);


```