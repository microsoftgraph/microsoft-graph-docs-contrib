---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnAttributeCollectionStartCustomExtension onAttributeCollectionStartCustomExtension = new OnAttributeCollectionStartCustomExtension();
onAttributeCollectionStartCustomExtension.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/identity/customAuthenticationExtensions/{customExtensionId}"));

graphClient.identity().authenticationEventListeners("{listenerId}").microsoft.graph.onAttributeCollectionStartListener().microsoft.graph.onAttributeCollectionStartCustomExtensionHandler().customExtension().reference()
	.buildRequest()
	.put(onAttributeCollectionStartCustomExtension);

```