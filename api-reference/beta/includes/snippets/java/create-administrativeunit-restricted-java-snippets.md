---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AdministrativeUnit administrativeUnit = new AdministrativeUnit();
administrativeUnit.displayName = "Executive Division";
administrativeUnit.description = "Executive division administration";
administrativeUnit.isMemberManagementRestricted = true;

graphClient.administrativeUnits()
	.buildRequest()
	.post(administrativeUnit);

```