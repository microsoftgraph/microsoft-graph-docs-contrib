---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.organization("84841066-274d-4ec0-a5c1-276be684bdd3").branding()
	.buildRequest()
	.delete();

```