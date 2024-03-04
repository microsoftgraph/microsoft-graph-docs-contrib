---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TelecomExpenseManagementPartner telecomExpenseManagementPartner = new TelecomExpenseManagementPartner();
telecomExpenseManagementPartner.setOdataType("#microsoft.graph.telecomExpenseManagementPartner");
telecomExpenseManagementPartner.setDisplayName("Display Name value");
telecomExpenseManagementPartner.setUrl("Url value");
telecomExpenseManagementPartner.setAppAuthorized(true);
telecomExpenseManagementPartner.setEnabled(true);
OffsetDateTime lastConnectionDateTime = OffsetDateTime.parse("2016-12-31T23:58:36.6670033-08:00");
telecomExpenseManagementPartner.setLastConnectionDateTime(lastConnectionDateTime);
TelecomExpenseManagementPartner result = graphClient.deviceManagement().telecomExpenseManagementPartners().byTelecomExpenseManagementPartnerId("{telecomExpenseManagementPartner-id}").patch(telecomExpenseManagementPartner);


```