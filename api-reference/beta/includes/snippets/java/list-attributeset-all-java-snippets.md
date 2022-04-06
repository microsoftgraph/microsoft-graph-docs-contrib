---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AttributeSetCollectionPage attributeSets = graphClient.directory().attributeSets()
	.buildRequest()
	.get();

```