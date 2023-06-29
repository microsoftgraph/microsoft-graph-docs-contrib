---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Fido2CombinationConfiguration authenticationCombinationConfiguration = new Fido2CombinationConfiguration();
LinkedList<String> allowedAAGUIDsList = new LinkedList<String>();
allowedAAGUIDsList.add("486c3b50-889c-480a-abc5-c04ef7c873e0");
allowedAAGUIDsList.add("c042882f-a621-40c8-94d3-9cde3a826fed");
allowedAAGUIDsList.add("ec454c08-4c77-4012-9d48-45f7f0fccdfb");
authenticationCombinationConfiguration.allowedAAGUIDs = allowedAAGUIDsList;
LinkedList<AuthenticationMethodModes> appliesToCombinationsList = new LinkedList<AuthenticationMethodModes>();
appliesToCombinationsList.add(AuthenticationMethodModes.FIDO2);
authenticationCombinationConfiguration.appliesToCombinations = appliesToCombinationsList;

graphClient.identity().conditionalAccess().authenticationStrength().policies("8313edec-d6af-483f-87b8-ec7cccfd2ab4").combinationConfigurations()
	.buildRequest()
	.post(authenticationCombinationConfiguration);

```