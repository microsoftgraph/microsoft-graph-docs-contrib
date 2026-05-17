---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ApprovedClientApp approvedClientApp = new ApprovedClientApp();
approvedClientApp.setOdataType("#microsoft.graph.approvedClientApp");
approvedClientApp.setId("cd57c330-a543-4249-9486-c1c257341de6");
ApprovedClientApp result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").remoteDesktopSecurityConfiguration().approvedClientApps().post(approvedClientApp);


```