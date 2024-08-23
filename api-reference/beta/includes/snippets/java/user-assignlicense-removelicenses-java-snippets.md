---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.assignlicense.AssignLicensePostRequestBody assignLicensePostRequestBody = new com.microsoft.graph.beta.users.item.assignlicense.AssignLicensePostRequestBody();
LinkedList<AssignedLicense> addLicenses = new LinkedList<AssignedLicense>();
assignLicensePostRequestBody.setAddLicenses(addLicenses);
LinkedList<UUID> removeLicenses = new LinkedList<UUID>();
removeLicenses.add(UUID.fromString("f30db892-07e9-47e9-837c-80727f46fd3d"));
removeLicenses.add(UUID.fromString("84a661c4-e949-4bd2-a560-ed7766fcaf2b"));
assignLicensePostRequestBody.setRemoveLicenses(removeLicenses);
var result = graphClient.me().assignLicense().post(assignLicensePostRequestBody);


```