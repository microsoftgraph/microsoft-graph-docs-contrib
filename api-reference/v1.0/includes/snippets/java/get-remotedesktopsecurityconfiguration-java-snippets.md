---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RemoteDesktopSecurityConfiguration remoteDesktopSecurityConfiguration = graphClient.servicePrincipals("00af5dfb-85da-4b41-a677-0c6b86dd34f8").remoteDesktopSecurityConfiguration()
	.buildRequest()
	.get();

```