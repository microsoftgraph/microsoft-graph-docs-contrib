---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Extension extension = graphClient.users("3fbd929d-8c56-4462-851e-0eb9a7b3a2a5").extensions("com.contoso.socialSettings")
	.buildRequest()
	.get();

```