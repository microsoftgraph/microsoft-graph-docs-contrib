---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedAppPolicyDeploymentSummary managedAppPolicyDeploymentSummary = graphClient.deviceAppManagement().iosManagedAppProtections("{iosManagedAppProtectionId}").deploymentSummary()
	.buildRequest()
	.get();

```