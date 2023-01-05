---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserCollectionPage users = graphClient.users()
	.buildRequest()
	.filter("assignedLicenses/any(s:s/skuId eq 184efa21-98c3-4e5d-95ab-d07053a96e67)")
	.get();

```