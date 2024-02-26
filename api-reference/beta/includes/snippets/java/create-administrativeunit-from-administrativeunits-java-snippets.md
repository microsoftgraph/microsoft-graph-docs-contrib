---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AdministrativeUnit administrativeUnit = new AdministrativeUnit();
administrativeUnit.setDisplayName("Seattle District Technical Schools");
administrativeUnit.setDescription("Seattle district technical schools administration");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("membershipType", "Dynamic");
additionalData.put("membershipRule", "(user.country -eq \"United States\")");
additionalData.put("membershipRuleProcessingState", "On");
administrativeUnit.setAdditionalData(additionalData);
AdministrativeUnit result = graphClient.administrativeUnits().post(administrativeUnit);


```