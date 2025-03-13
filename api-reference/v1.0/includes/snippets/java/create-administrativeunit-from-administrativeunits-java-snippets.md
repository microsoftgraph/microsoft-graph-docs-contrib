---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AdministrativeUnit administrativeUnit = new AdministrativeUnit();
administrativeUnit.setDisplayName("Seattle District Technical Schools");
administrativeUnit.setDescription("Seattle district technical schools administration");
administrativeUnit.setMembershipType("Dynamic");
administrativeUnit.setMembershipRule("(user.country -eq \"United States\")");
administrativeUnit.setMembershipRuleProcessingState("On");
administrativeUnit.setVisibility("HiddenMembership");
AdministrativeUnit result = graphClient.directory().administrativeUnits().post(administrativeUnit);


```