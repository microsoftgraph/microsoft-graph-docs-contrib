---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupSettingTemplate groupSettingTemplate = graphClient.groupSettingTemplates("08d542b9-071f-4e16-94b0-74abb372e3d9")
	.buildRequest()
	.get();

```