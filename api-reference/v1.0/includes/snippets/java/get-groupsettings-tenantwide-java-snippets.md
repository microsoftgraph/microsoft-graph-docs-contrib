---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupSetting groupSetting = graphClient.groupSettings("84af2ca5-c274-41bf-86e4-6e374ec4def6")
	.buildRequest()
	.get();

```