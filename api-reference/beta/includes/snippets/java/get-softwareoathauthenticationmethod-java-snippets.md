---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SoftwareOathAuthenticationMethod softwareOathAuthenticationMethod = graphClient.me().authentication().softwareOathMethods("b172893e-893e-b172-3e89-72b13e8972b1")
	.buildRequest()
	.get();

```