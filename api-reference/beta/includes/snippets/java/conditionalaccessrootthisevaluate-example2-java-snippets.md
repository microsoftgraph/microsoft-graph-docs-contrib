---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identity.conditionalaccess.evaluate.EvaluatePostRequestBody evaluatePostRequestBody = new com.microsoft.graph.beta.identity.conditionalaccess.evaluate.EvaluatePostRequestBody();
evaluatePostRequestBody.setAppliedPoliciesOnly(true);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 signInIdentity = new ();
signInIdentity.setOdataType("#microsoft.graph.userSignIn");
signInIdentity.setUserId("15dc174b-f34c-4588-ac45-61d6e05dce93");
additionalData.put("signInIdentity", signInIdentity);
 signInContext = new ();
signInContext.setOdataType("#microsoft.graph.authContext");
signInContext.setAuthenticationContextValue("c37");
additionalData.put("signInContext", signInContext);
 signInConditions = new ();
signInConditions.setDevicePlatform("windows");
signInConditions.setClientAppType("mobileAppsAndDesktopClients");
signInConditions.setSignInRiskLevel("medium");
signInConditions.setUserRiskLevel("none");
signInConditions.setCountry("US");
signInConditions.setIpAddress("40.77.182.32");
signInConditions.setInsiderRiskLevel("moderate");
 authenticationFlow = new ();
authenticationFlow.setTransferMethod("authenticationTransfer");
signInConditions.setAuthenticationFlow(authenticationFlow);
 deviceInfo = new ();
deviceInfo.setProfileType("Standard");
signInConditions.setDeviceInfo(deviceInfo);
additionalData.put("signInConditions", signInConditions);
evaluatePostRequestBody.setAdditionalData(additionalData);
var result = graphClient.identity().conditionalAccess().evaluate().post(evaluatePostRequestBody);


```