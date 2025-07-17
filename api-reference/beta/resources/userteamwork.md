---
title: "userTeamwork resource type"
description: "Represents a container for the range of Microsoft Teams functionalities that are available per user in the tenant."
author: "akjo"
doc_type: resourcePageType
ms.localizationpriority: high
ms.subservice: "teams"
ms.date: 07/18/2024
---

# userTeamwork resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for the range of Microsoft Teams functionalities that are available per user in the tenant.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List apps for user](../api/userteamwork-list-installedapps.md)|[teamsAppInstallation](../resources/teamsappinstallation.md) collection|Retrieve the list of apps installed in the personal scope of the specified user.|
|[Get](../api/userteamwork-get.md)|[userTeamwork](../resources/userteamwork.md)|Get userTeamwork settings for the specified [user](../resources/user.md), which includes the Microsoft Teams region and the locale chosen by the user.|

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|id| String|The unique identifier for the **userTeamwork** object.|
|locale|String |Represents the location that a user selected in Microsoft Teams and doesn't follow the Office's locale setting. A user’s locale is represented by their preferred language and country or region. For example, `en-us`. The language component follows two-letter codes as defined in [ISO 639-1](https://www.iso.org/iso/home/standards/language_codes.htm), and the country component follows two-letter codes as defined in [ISO 3166-1 alpha-2](https://www.iso.org/iso/country_codes.htm).|  
|region|string|Represents the region of the organization or the user. For users with multigeo licenses, the property contains the user's region (if available). For users without multigeo licenses, the property contains the organization's region.<br><br>The **region** value can be any region supported by the Teams payload. The possible values are: `Americas`, `Europe and MiddleEast`, `Asia Pacific`, `UAE`, `Australia`, `Brazil`, `Canada`, `Switzerland`, `Germany`, `France`, `India`, `Japan`, `South Korea`, `Norway`, `Singapore`, `United Kingdom`, `South Africa`, `Sweden`, `Qatar`, `Poland`, `Italy`, `Israel`, `Spain`, `Mexico`, `USGov Community Cloud`, `USGov Community Cloud High`, `USGov Department of Defense`, and `China`.|

## Relationships

| Relationship | Type | Description |
|:---------------|:--------|:----------|
|associatedTeams|[associatedTeamInfo](associatedteaminfo.md) collection| The list of [associatedTeamInfo](associatedteaminfo.md) objects that a [user](user.md) is associated with.|
|installedApps|[teamsAppInstallation](teamsappinstallation.md) collection|The apps installed in the personal scope of this user.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userTeamwork",
  "baseType": "microsoft.graph.entity"
}-->

```json
{
  "id": "String (identifier)",
  "locale" : "String",
  "region" : "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "userteamwork resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

## Related content

- [teamwork resource type](teamwork.md)
