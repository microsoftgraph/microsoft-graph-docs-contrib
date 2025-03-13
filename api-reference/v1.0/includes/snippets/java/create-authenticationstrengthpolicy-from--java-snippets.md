---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthenticationStrengthPolicy authenticationStrengthPolicy = new AuthenticationStrengthPolicy();
authenticationStrengthPolicy.setDisplayName("Example");
authenticationStrengthPolicy.setRequirementsSatisfied(EnumSet.of(AuthenticationStrengthRequirements.Mfa));
LinkedList<AuthenticationMethodModes> allowedCombinations = new LinkedList<AuthenticationMethodModes>();
allowedCombinations.add(AuthenticationMethodModes.Fido2);
authenticationStrengthPolicy.setAllowedCombinations(allowedCombinations);
LinkedList<AuthenticationCombinationConfiguration> combinationConfigurations = new LinkedList<AuthenticationCombinationConfiguration>();
Fido2CombinationConfiguration authenticationCombinationConfiguration = new Fido2CombinationConfiguration();
authenticationCombinationConfiguration.setOdataType("#microsoft.graph.fido2CombinationConfiguration");
authenticationCombinationConfiguration.setId("42235320-c8db-4d8c-9344-8f1ce87f734b");
LinkedList<AuthenticationMethodModes> appliesToCombinations = new LinkedList<AuthenticationMethodModes>();
appliesToCombinations.add(AuthenticationMethodModes.Fido2);
authenticationCombinationConfiguration.setAppliesToCombinations(appliesToCombinations);
LinkedList<String> allowedAAGUIDs = new LinkedList<String>();
allowedAAGUIDs.add("de1e552d-db1d-4423-a619-566b625cdc84");
allowedAAGUIDs.add("90a3ccdf-635c-4729-a248-9b709135078f");
authenticationCombinationConfiguration.setAllowedAAGUIDs(allowedAAGUIDs);
combinationConfigurations.add(authenticationCombinationConfiguration);
authenticationStrengthPolicy.setCombinationConfigurations(combinationConfigurations);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("combinationConfigurations@odata.context", "https://graph.microsoft.com/v1.0/$metadata#policies/authenticationStrengthPolicies('5790842a-5bab-44c2-9cf1-b38d675b70ea')/combinationConfigurations");
authenticationStrengthPolicy.setAdditionalData(additionalData);
AuthenticationStrengthPolicy result = graphClient.policies().authenticationStrengthPolicies().post(authenticationStrengthPolicy);


```