---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRbacResourceAction result = graphClient.roleManagement().directory().resourceNamespaces().byUnifiedRbacResourceNamespaceId("{unifiedRbacResourceNamespace-id}").resourceActions().byUnifiedRbacResourceActionId("{unifiedRbacResourceAction-id}").get();


```