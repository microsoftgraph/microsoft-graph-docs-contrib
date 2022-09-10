---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.policies().mobileDeviceManagementPolicies("ab90bacf-55a3-4a3e-839a-aa4b74e4f020").includedGroups("dc3d2ce5-7c5e-4dca-a0ef-2145bf6e53ef").reference()
	.buildRequest()
	.delete();

```