---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.groups.item.assignlicense.AssignLicensePostRequestBody assignLicensePostRequestBody = new com.microsoft.graph.groups.item.assignlicense.AssignLicensePostRequestBody();
LinkedList<AssignedLicense> addLicenses = new LinkedList<AssignedLicense>();
assignLicensePostRequestBody.setAddLicenses(addLicenses);
LinkedList<UUID> removeLicenses = new LinkedList<UUID>();
removeLicenses.add(UUID.fromString("c7df2760-2c81-4ef7-b578-5b5392b571df"));
removeLicenses.add(UUID.fromString("b05e124f-c7cc-45a0-a6aa-8cf78c946968"));
assignLicensePostRequestBody.setRemoveLicenses(removeLicenses);
var result = graphClient.groups().byGroupId("{group-id}").assignLicense().post(assignLicensePostRequestBody);


```