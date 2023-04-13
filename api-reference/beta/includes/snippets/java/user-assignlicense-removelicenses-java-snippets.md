---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<AssignedLicense> addLicensesList = new LinkedList<AssignedLicense>();

LinkedList<UUID> removeLicensesList = new LinkedList<UUID>();
removeLicensesList.add(UUID.fromString("f30db892-07e9-47e9-837c-80727f46fd3d"));
removeLicensesList.add(UUID.fromString("84a661c4-e949-4bd2-a560-ed7766fcaf2b"));

graphClient.me()
	.assignLicense(UserAssignLicenseParameterSet
		.newBuilder()
		.withAddLicenses(addLicensesList)
		.withRemoveLicenses(removeLicensesList)
		.build())
	.buildRequest()
	.post();

```