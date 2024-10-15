---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Fido2CombinationConfiguration authenticationCombinationConfiguration = new Fido2CombinationConfiguration();
authenticationCombinationConfiguration.setOdataType("#microsoft.graph.fido2CombinationConfiguration");
LinkedList<String> allowedAAGUIDs = new LinkedList<String>();
allowedAAGUIDs.add("486c3b50-889c-480a-abc5-c04ef7c873e0");
allowedAAGUIDs.add("c042882f-a621-40c8-94d3-9cde3a826fed");
allowedAAGUIDs.add("ec454c08-4c77-4012-9d48-45f7f0fccdfb");
authenticationCombinationConfiguration.setAllowedAAGUIDs(allowedAAGUIDs);
LinkedList<AuthenticationMethodModes> appliesToCombinations = new LinkedList<AuthenticationMethodModes>();
appliesToCombinations.add(AuthenticationMethodModes.Fido2);
authenticationCombinationConfiguration.setAppliesToCombinations(appliesToCombinations);
AuthenticationCombinationConfiguration result = graphClient.identity().conditionalAccess().authenticationStrength().policies().byAuthenticationStrengthPolicyId("{authenticationStrengthPolicy-id}").combinationConfigurations().post(authenticationCombinationConfiguration);


```