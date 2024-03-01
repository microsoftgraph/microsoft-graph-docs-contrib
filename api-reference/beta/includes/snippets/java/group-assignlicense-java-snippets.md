---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.groups.item.assignlicense.AssignLicensePostRequestBody assignLicensePostRequestBody = new com.microsoft.graph.beta.groups.item.assignlicense.AssignLicensePostRequestBody();
LinkedList<AssignedLicense> addLicenses = new LinkedList<AssignedLicense>();
AssignedLicense assignedLicense = new AssignedLicense();
LinkedList<UUID> disabledPlans = new LinkedList<UUID>();
disabledPlans.add(UUID.fromString("113feb6c-3fe4-4440-bddc-54d774bf0318"));
disabledPlans.add(UUID.fromString("14ab5db5-e6c4-4b20-b4bc-13e36fd2227f"));
assignedLicense.setDisabledPlans(disabledPlans);
assignedLicense.setSkuId(UUID.fromString("b05e124f-c7cc-45a0-a6aa-8cf78c946968"));
addLicenses.add(assignedLicense);
AssignedLicense assignedLicense1 = new AssignedLicense();
LinkedList<UUID> disabledPlans1 = new LinkedList<UUID>();
disabledPlans1.add(UUID.fromString("a413a9ff-720c-4822-98ef-2f37c2a21f4c"));
assignedLicense1.setDisabledPlans(disabledPlans1);
assignedLicense1.setSkuId(UUID.fromString("c7df2760-2c81-4ef7-b578-5b5392b571df"));
addLicenses.add(assignedLicense1);
assignLicensePostRequestBody.setAddLicenses(addLicenses);
LinkedList<String> removeLicenses = new LinkedList<String>();
assignLicensePostRequestBody.setRemoveLicenses(removeLicenses);
var result = graphClient.groups().byGroupId("{group-id}").assignLicense().post(assignLicensePostRequestBody);


```