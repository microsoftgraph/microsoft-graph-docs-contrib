---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TelecomExpenseManagementPartnerCollectionPage telecomExpenseManagementPartners = graphClient.deviceManagement().telecomExpenseManagementPartners()
	.buildRequest()
	.get();

```