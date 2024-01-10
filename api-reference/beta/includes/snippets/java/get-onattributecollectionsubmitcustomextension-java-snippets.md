---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnAttributeCollectionSubmitCustomExtension onAttributeCollectionSubmitCustomExtension = graphClient.identity().authenticationEventListeners("{listenerId}").microsoft.graph.onAttributeCollectionSubmitListener().microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler().customExtension()
	.buildRequest()
	.get();

```