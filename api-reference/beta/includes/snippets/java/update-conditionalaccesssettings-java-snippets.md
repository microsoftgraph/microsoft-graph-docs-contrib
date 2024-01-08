---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConditionalAccessSettings conditionalAccessSettings = new ConditionalAccessSettings();
conditionalAccessSettings.additionalDataManager().put("@odata.context", new JsonPrimitive("https://graph.microsoft.com/beta/networkAccess/settings/$metadata#conditionalAccess"));
conditionalAccessSettings.signalingStatus = Status.DISABLED;

graphClient.networkAccess().settings().conditionalAccess()
	.buildRequest()
	.patch(conditionalAccessSettings);

```