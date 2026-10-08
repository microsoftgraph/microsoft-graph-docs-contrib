---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ApprovedClientApp approvedClientApp = new ApprovedClientApp();
approvedClientApp.setOdataType("#microsoft.graph.approvedClientApp");
approvedClientApp.setDisplayName("Client App 1");
ApprovedClientApp result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").remoteDesktopSecurityConfiguration().approvedClientApps().post(approvedClientApp);


```