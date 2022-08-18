---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPC cloudPC = graphClient.deviceManagement().virtualEndpoint().cloudPCs("40cee9d2-03fb-4066-8d35-dbdf2875c33f")
	.buildRequest()
	.select("id,displayName,imageDisplayName,lastModifiedDateTime,lastRemoteActionResult,lastLoginResult,connectivityResult")
	.get();

```