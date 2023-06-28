---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ComplianceManagementPartnerCollectionPage complianceManagementPartners = graphClient.deviceManagement().complianceManagementPartners()
	.buildRequest()
	.get();

```