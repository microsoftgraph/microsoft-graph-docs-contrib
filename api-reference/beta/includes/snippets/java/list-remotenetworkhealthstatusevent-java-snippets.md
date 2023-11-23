---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RemoteNetworkHealthEventCollectionPage remoteNetworks = graphClient.networkAccess().logs().remoteNetworks()
	.buildRequest()
	.get();

```