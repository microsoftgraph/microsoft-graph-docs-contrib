---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationCombinationConfiguration authenticationCombinationConfiguration = new AuthenticationCombinationConfiguration();
LinkedList<AuthenticationMethodModes> appliesToCombinationsList = new LinkedList<AuthenticationMethodModes>();
appliesToCombinationsList.add(AuthenticationMethodModes.FIDO2);
authenticationCombinationConfiguration.appliesToCombinations = appliesToCombinationsList;

graphClient.identity().conditionalAccess().authenticationStrength().policies("0e371351-6419-4c8a-8047-61eef0212ffb").combinationConfigurations("4643f174-fe85-42b8-8b84-516775750a30")
	.buildRequest()
	.patch(authenticationCombinationConfiguration);

```