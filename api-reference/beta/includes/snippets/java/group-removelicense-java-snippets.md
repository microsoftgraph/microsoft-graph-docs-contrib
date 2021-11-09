---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<AssignedLicense> addLicensesList = new LinkedList<AssignedLicense>();

LinkedList<UUID> removeLicensesList = new LinkedList<UUID>();
removeLicensesList.add(UUID.fromString("c7df2760-2c81-4ef7-b578-5b5392b571df"));
removeLicensesList.add(UUID.fromString("b05e124f-c7cc-45a0-a6aa-8cf78c946968"));

graphClient.groups("1132b215-826f-42a9-8cfe-1643d19d17fd")
	.assignLicense(GroupAssignLicenseParameterSet
		.newBuilder()
		.withAddLicenses(addLicensesList)
		.withRemoveLicenses(removeLicensesList)
		.build())
	.buildRequest()
	.post();

```