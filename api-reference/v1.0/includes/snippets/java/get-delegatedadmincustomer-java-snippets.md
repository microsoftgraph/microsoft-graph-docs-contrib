---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DelegatedAdminCustomer delegatedAdminCustomer = graphClient.tenantRelationships().delegatedAdminCustomers("4fdbff88-9d6b-42e0-9713-45c922ba8001")
	.buildRequest()
	.get();

```