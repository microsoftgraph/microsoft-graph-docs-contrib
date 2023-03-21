---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<AssignedLicense> addLicensesList = new LinkedList<AssignedLicense>();
AssignedLicense addLicenses = new AssignedLicense();
LinkedList<UUID> disabledPlansList = new LinkedList<UUID>();
disabledPlansList.add(UUID.fromString("8a256a2b-b617-496d-b51b-e76466e88db0"));
addLicenses.disabledPlans = disabledPlansList;
addLicenses.skuId = UUID.fromString("84a661c4-e949-4bd2-a560-ed7766fcaf2b");

addLicensesList.add(addLicenses);
AssignedLicense addLicenses1 = new AssignedLicense();
LinkedList<UUID> disabledPlansList1 = new LinkedList<UUID>();
addLicenses1.disabledPlans = disabledPlansList1;
addLicenses1.skuId = UUID.fromString("f30db892-07e9-47e9-837c-80727f46fd3d");

addLicensesList.add(addLicenses1);

LinkedList<UUID> removeLicensesList = new LinkedList<UUID>();

graphClient.me()
	.assignLicense(UserAssignLicenseParameterSet
		.newBuilder()
		.withAddLicenses(addLicensesList)
		.withRemoveLicenses(removeLicensesList)
		.build())
	.buildRequest()
	.post();

```