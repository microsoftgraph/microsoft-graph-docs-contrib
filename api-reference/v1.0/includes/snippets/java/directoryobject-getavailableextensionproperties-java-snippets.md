---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.directoryObjects()
	.getAvailableExtensionProperties(DirectoryObjectGetAvailableExtensionPropertiesParameterSet
		.newBuilder()
		.withIsSyncedFromOnPremises(null)
		.build())
	.buildRequest()
	.post();

```