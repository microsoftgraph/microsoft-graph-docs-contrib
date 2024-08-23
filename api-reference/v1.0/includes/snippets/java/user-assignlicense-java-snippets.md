---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.assignlicense.AssignLicensePostRequestBody assignLicensePostRequestBody = new com.microsoft.graph.users.item.assignlicense.AssignLicensePostRequestBody();
LinkedList<AssignedLicense> addLicenses = new LinkedList<AssignedLicense>();
AssignedLicense assignedLicense = new AssignedLicense();
LinkedList<UUID> disabledPlans = new LinkedList<UUID>();
disabledPlans.add(UUID.fromString("11b0131d-43c8-4bbb-b2c8-e80f9a50834a"));
assignedLicense.setDisabledPlans(disabledPlans);
assignedLicense.setSkuId(UUID.fromString("45715bb8-13f9-4bf6-927f-ef96c102d394"));
addLicenses.add(assignedLicense);
assignLicensePostRequestBody.setAddLicenses(addLicenses);
LinkedList<UUID> removeLicenses = new LinkedList<UUID>();
removeLicenses.add(UUID.fromString("bea13e0c-3828-4daa-a392-28af7ff61a0f"));
assignLicensePostRequestBody.setRemoveLicenses(removeLicenses);
var result = graphClient.me().assignLicense().post(assignLicensePostRequestBody);


```