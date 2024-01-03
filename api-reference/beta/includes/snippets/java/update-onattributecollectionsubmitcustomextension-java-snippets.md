---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnAttributeCollectionSubmitCustomExtension onAttributeCollectionSubmitCustomExtension = new OnAttributeCollectionSubmitCustomExtension();
onAttributeCollectionSubmitCustomExtension.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/identity/customAuthenticationExtensions/{customExtensionId}"));

graphClient.identity().authenticationEventListeners("{listenerId}").microsoft.graph.onAttributeCollectionSubmitListener().microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler().customExtension().reference()
	.buildRequest()
	.put(onAttributeCollectionSubmitCustomExtension);

```