---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identitygovernance.rolemanagementalerts.alerts.refresh.RefreshPostRequestBody refreshPostRequestBody = new com.microsoft.graph.beta.identitygovernance.rolemanagementalerts.alerts.refresh.RefreshPostRequestBody();
refreshPostRequestBody.setScopeId("/");
refreshPostRequestBody.setScopeType("DirectoryRole");
graphClient.identityGovernance().roleManagementAlerts().alerts().refresh().post(refreshPostRequestBody);


```