---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

RemoteDesktopSecurityConfiguration remoteDesktopSecurityConfiguration = new RemoteDesktopSecurityConfiguration();
remoteDesktopSecurityConfiguration.setOdataType("#microsoft.graph.remoteDesktopSecurityConfiguration");
remoteDesktopSecurityConfiguration.setIsRemoteDesktopProtocolEnabled(true);
RemoteDesktopSecurityConfiguration result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").remoteDesktopSecurityConfiguration().patch(remoteDesktopSecurityConfiguration);


```