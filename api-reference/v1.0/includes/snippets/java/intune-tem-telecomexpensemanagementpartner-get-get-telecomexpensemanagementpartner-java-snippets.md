---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TelecomExpenseManagementPartner telecomExpenseManagementPartner = graphClient.deviceManagement().telecomExpenseManagementPartners("{telecomExpenseManagementPartnerId}")
	.buildRequest()
	.get();

```