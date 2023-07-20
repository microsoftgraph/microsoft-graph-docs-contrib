---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TelecomExpenseManagementPartner telecomExpenseManagementPartner = new TelecomExpenseManagementPartner();
telecomExpenseManagementPartner.displayName = "Display Name value";
telecomExpenseManagementPartner.url = "Url value";
telecomExpenseManagementPartner.appAuthorized = true;
telecomExpenseManagementPartner.enabled = true;
telecomExpenseManagementPartner.lastConnectionDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:36.6670033+00:00");

graphClient.deviceManagement().telecomExpenseManagementPartners("{telecomExpenseManagementPartnerId}")
	.buildRequest()
	.patch(telecomExpenseManagementPartner);

```