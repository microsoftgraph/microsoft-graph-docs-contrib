---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcProvisioningPolicy cloudPcProvisioningPolicy = new CloudPcProvisioningPolicy();
cloudPcProvisioningPolicy.setOdataType("#microsoft.graph.cloudPcProvisioningPolicy");
cloudPcProvisioningPolicy.setDisplayName("HR provisioning policy");
cloudPcProvisioningPolicy.setDescription("Provisioning policy for India HR employees");
MicrosoftManagedDesktop microsoftManagedDesktop = new MicrosoftManagedDesktop();
microsoftManagedDesktop.setManagedType(MicrosoftManagedDesktopType.StarterManaged);
microsoftManagedDesktop.setProfile(null);
cloudPcProvisioningPolicy.setMicrosoftManagedDesktop(microsoftManagedDesktop);
CloudPcProvisioningPolicyAutopatch autopatch = new CloudPcProvisioningPolicyAutopatch();
autopatch.setAutopatchGroupId("91197a0b-3a74-408d-ba88-bce3fdc4e5eb");
cloudPcProvisioningPolicy.setAutopatch(autopatch);
CloudPcProvisioningPolicy result = graphClient.deviceManagement().virtualEndpoint().provisioningPolicies().byCloudPcProvisioningPolicyId("{cloudPcProvisioningPolicy-id}").patch(cloudPcProvisioningPolicy);


```