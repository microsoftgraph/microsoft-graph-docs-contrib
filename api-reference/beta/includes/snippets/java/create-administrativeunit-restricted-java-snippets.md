---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AdministrativeUnit administrativeUnit = new AdministrativeUnit();
administrativeUnit.setDisplayName("Executive Division");
administrativeUnit.setDescription("Executive division administration");
administrativeUnit.setIsMemberManagementRestricted(true);
AdministrativeUnit result = graphClient.administrativeUnits().post(administrativeUnit);


```