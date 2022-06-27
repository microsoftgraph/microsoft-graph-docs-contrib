---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcProvisioningPolicy cloudPcProvisioningPolicy = graphClient.deviceManagement().virtualEndpoint().provisioningPolicies("60b94f83-3e22-430e-a69d-440f65b922d6")
	.buildRequest()
	.select("id,description,displayName,domainJoinConfiguration,imageDisplayName,imageId,imageType,onPremisesConnectionId,windowsSettings,managedBy,cloudPcGroupDisplayName,gracePeriodInHours,localAdminEnabled,alternateResourceUrl")
	.get();

```