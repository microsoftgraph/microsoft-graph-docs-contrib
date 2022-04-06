---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRbacResourceAction unifiedRbacResourceAction = graphClient.roleManagement().directory().resourceNamespaces("microsoft.directory").resourceActions("microsoft.directory-accessReviews-allProperties-read-get")
	.buildRequest()
	.get();

```