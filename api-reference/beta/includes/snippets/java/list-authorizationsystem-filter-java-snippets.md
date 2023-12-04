---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthorizationSystemCollectionPage authorizationSystems = graphClient.external().authorizationSystems()
	.buildRequest()
	.filter("dataCollectionInfo/entitlements/microsoft.graph.entitlementsDataCollection/permissionsModificationCapability eq 'enabled' and dataCollectionInfo/entitlements/microsoft.graph.entitlementsDataCollection/status eq 'online'")
	.get();

```