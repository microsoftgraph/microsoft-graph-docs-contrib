---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = graphClient.sites("mycompany.sharepoint.com,8f03a01c-dcfa-4aaf-9be5-b3fb48e538c1,739084f3-c0fa-46ac-b7f8-13b344781ad0").termStore().groups("1FFD3F87-9464-488A-A0EC-8FB90911182C")
	.buildRequest()
	.get();

```