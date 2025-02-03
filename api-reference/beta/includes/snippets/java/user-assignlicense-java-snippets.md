---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.assignlicense.AssignLicensePostRequestBody assignLicensePostRequestBody = new com.microsoft.graph.beta.users.item.assignlicense.AssignLicensePostRequestBody();
LinkedList<AssignedLicense> addLicenses = new LinkedList<AssignedLicense>();
AssignedLicense assignedLicense = new AssignedLicense();
LinkedList<UUID> disabledPlans = new LinkedList<UUID>();
disabledPlans.add(UUID.fromString("8a256a2b-b617-496d-b51b-e76466e88db0"));
assignedLicense.setDisabledPlans(disabledPlans);
assignedLicense.setSkuId(UUID.fromString("84a661c4-e949-4bd2-a560-ed7766fcaf2b"));
addLicenses.add(assignedLicense);
AssignedLicense assignedLicense1 = new AssignedLicense();
LinkedList<String> disabledPlans1 = new LinkedList<String>();
assignedLicense1.setDisabledPlans(disabledPlans1);
assignedLicense1.setSkuId(UUID.fromString("f30db892-07e9-47e9-837c-80727f46fd3d"));
addLicenses.add(assignedLicense1);
assignLicensePostRequestBody.setAddLicenses(addLicenses);
LinkedList<String> removeLicenses = new LinkedList<String>();
assignLicensePostRequestBody.setRemoveLicenses(removeLicenses);
var result = graphClient.me().assignLicense().post(assignLicensePostRequestBody);


```