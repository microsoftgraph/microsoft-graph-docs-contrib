---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamGetOpenShiftsCollectionPage getOpenShifts = graphClient.me().joinedTeams()
	.getOpenShifts()
	.buildRequest()
	.get();

```