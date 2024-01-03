---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnAttributeCollectionStartCustomExtension onAttributeCollectionStartCustomExtension = graphClient.identity().authenticationEventListeners("{listenerId}").microsoft.graph.onAttributeCollectionStartListener().microsoft.graph.onAttributeCollectionStartCustomExtensionHandler().customExtension()
	.buildRequest()
	.get();

```