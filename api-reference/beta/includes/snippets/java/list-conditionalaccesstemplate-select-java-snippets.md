---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConditionalAccessTemplateCollectionPage templates = graphClient.identity().conditionalAccess().templates()
	.buildRequest()
	.filter("scenarios has 'secureFoundation'")
	.select("name,description,id,scenarios")
	.get();

```