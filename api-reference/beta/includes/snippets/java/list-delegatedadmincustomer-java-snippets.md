---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DelegatedAdminCustomerCollectionPage delegatedAdminCustomers = graphClient.tenantRelationships().delegatedAdminCustomers()
	.buildRequest()
	.get();

```