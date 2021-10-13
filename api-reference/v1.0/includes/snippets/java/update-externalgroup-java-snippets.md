---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalGroup externalGroup = new ExternalGroup();
externalGroup.displayName = "Contoso Marketing";
externalGroup.description = "The product marketing team";

graphClient.connections("{connectionsId}").groups("{externalGroupId}")
	.buildRequest()
	.patch(externalGroup);

```