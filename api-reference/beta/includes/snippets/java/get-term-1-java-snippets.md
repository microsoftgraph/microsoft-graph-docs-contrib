---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Term term = graphClient.sites("microsoft.sharepoint.com,c6482504-4a85-4b21-858a-7e88dafc8232,d90ca07d-25c0-4ce7-864b-d68b607e697f").termStore().groups("1FFD3F87-9464-488A-A0EC-8FB90911182C").sets("8ed8c9ea-7052-4c1d-a4d7-b9c10bffea6f").terms("81be9856-9856-81be-5698-be815698be81")
	.buildRequest()
	.get();

```