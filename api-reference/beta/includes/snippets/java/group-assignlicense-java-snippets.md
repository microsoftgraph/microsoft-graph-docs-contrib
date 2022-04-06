---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<AssignedLicense> addLicensesList = new LinkedList<AssignedLicense>();
AssignedLicense addLicenses = new AssignedLicense();
LinkedList<UUID> disabledPlansList = new LinkedList<UUID>();
disabledPlansList.add(UUID.fromString("113feb6c-3fe4-4440-bddc-54d774bf0318"));
disabledPlansList.add(UUID.fromString("14ab5db5-e6c4-4b20-b4bc-13e36fd2227f"));
addLicenses.disabledPlans = disabledPlansList;
addLicenses.skuId = UUID.fromString("b05e124f-c7cc-45a0-a6aa-8cf78c946968");

addLicensesList.add(addLicenses);
AssignedLicense addLicenses1 = new AssignedLicense();
LinkedList<UUID> disabledPlansList1 = new LinkedList<UUID>();
disabledPlansList1.add(UUID.fromString("a413a9ff-720c-4822-98ef-2f37c2a21f4c"));
addLicenses1.disabledPlans = disabledPlansList1;
addLicenses1.skuId = UUID.fromString("c7df2760-2c81-4ef7-b578-5b5392b571df");

addLicensesList.add(addLicenses1);

LinkedList<UUID> removeLicensesList = new LinkedList<UUID>();

graphClient.groups("1132b215-826f-42a9-8cfe-1643d19d17fd")
	.assignLicense(GroupAssignLicenseParameterSet
		.newBuilder()
		.withAddLicenses(addLicensesList)
		.withRemoveLicenses(removeLicensesList)
		.build())
	.buildRequest()
	.post();

```