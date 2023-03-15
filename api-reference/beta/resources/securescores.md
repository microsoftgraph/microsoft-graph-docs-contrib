---
title: "secureScore resource type"
description: "top=n, where n = the number of days of data that you want to retrieve. "
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: security
author: "preetikr"
---

# secureScore resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a tenant's secure score per day of scoring data, at the tenant and control level. By default, 90 days of data is held. This data is sorted by **createdDateTime**, from latest to earliest. This will allow you to page responses by using $top=n, where n = the number of days of data that you want to retrieve.


## Methods

| Method   | Return Type|Description|
|:---------------|:--------|:----------|
|[List secureScores](../api/securescores-list.md) | [secureScores](securescores.md) |Read properties and metadata of a secureScores object.|


## Properties
Entity type containing properties of the tenant security score (daily snapshot data).

|Property |Type |Description |
|:--|:--|:--|
|	activeUserCount	|	Int32	|	Active user count of the given tenant.	|
|	averageComparativeScores |	[averageComparativeScore](averagecomparativescore.md) collection	|Average score by different scopes (for example, average by industry, average by seating) and control category (Identity, Data, Device, Apps, Infrastructure) within the scope.	|
|	azureTenantId	|	String	|	GUID string for tenant ID.	|
|	controlScores |	[controlScore](controlscore.md) collection	|	Contains tenant scores for a set of controls.	|
|	createdDateTime	|	DateTimeOffset	|	The date when the entity is created.  |
|	currentScore	|	Double	|	Tenant current attained score on specified date.	|
|	enabledServices |	String collection	|	Microsoft-provided services for the tenant (for example, Exchange online, Skype, SharePoint).	|
|	id	|	String	|	Combination of azureTenantId_createdDateTime.	|
|	licensedUserCount	|	Int32	|	Licensed user count of the given tenant.	|
|	maxScore |	Double	|	Tenant maximum possible score on specified date.	|




## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.secureScore"
}-->

```json
{
  "activeUserCount": "Int32",
  "averageComparativeScores": "Collection(microsoft.graph.SecureScore.averageComparativeScores)",
  "averageScore": "Double",
  "azureTenantId": "Guid",
  "controlScores": "Collection(microsoft.graph.SecureScore.controlScores)",
  "createdDate": "DateTimeOffset",
  "createdDateTime": "2019-02-07T20:33:53.156Z",
  "currentScore": "Int32",
  "enabledServices": "Collection(string)",
  "id": "String",
  "licensedUserCount": "Int32",
  "maxScore": "Int32"
}
```


<!--
{
  "type": "#page.annotation",
  "description": "secureScores resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


