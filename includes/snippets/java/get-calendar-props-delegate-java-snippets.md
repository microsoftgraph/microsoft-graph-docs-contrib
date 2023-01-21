---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Calendar calendar = graphClient.users("meganb@contoso.OnMicrosoft.com").calendars("AAMkADlAABhbftjAAA=")
	.buildRequest()
	.get();

```