---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupSetting groupSetting = graphClient.groups("05aa6a98-956a-45c0-b13b-88076a23f2cd").settings("a06fa228-3042-4662-bd09-33e298da1afe")
	.buildRequest()
	.get();

```