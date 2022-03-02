---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcProvisioningPolicy cloudPcProvisioningPolicy = new CloudPcProvisioningPolicy();
cloudPcProvisioningPolicy.displayName = "HR provisioning policy";
cloudPcProvisioningPolicy.description = "Provisioning policy for India HR employees";
cloudPcProvisioningPolicy.onPremisesConnectionId = "4e47d0f6-6f77-44f0-8893-c0fe1701b553";

graphClient.deviceManagement().virtualEndpoint().provisioningPolicies("{id}")
	.buildRequest()
	.patch(cloudPcProvisioningPolicy);

```