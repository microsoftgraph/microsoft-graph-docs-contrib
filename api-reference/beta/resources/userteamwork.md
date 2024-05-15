---
title: "userTeamwork resource type"
description: "Represents a container for the range of Microsoft Teams functionalities that are available per user in the tenant."
author: "akjo"
doc_type: resourcePageType
ms.localizationpriority: high
ms.subservice: "teams"
---

# userTeamwork resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for the range of Microsoft Teams functionalities that are available per user in the tenant.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List installedApps](../api/userteamwork-list-installedapps.md)|[teamsAppInstallation](../resources/teamsappinstallation.md) collection|Retrieve the list of apps installed in the personal scope of the specified user.|
|[Get userTeamwork](../api/userteamwork-get.md)|[userTeamwork](../resources/userteamwork.md)|Get userTeamwork settings for the specified [user](../resources/user.md), which includes the Microsoft Teams region and the locale chosen by the user.|

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|id| String|The unique identifier for the **userTeamwork** object.|
|locale|String |The locale that a user has chosen within Microsoft Teams. The locale property refers to the locale setting specific to Teams, which doesn't follow Office level locale setting. A user’s locale is represented by their preferred language and country or region. For example, `en-us`. The language component follows 2-letter codes as defined in [ISO 639-1](https://www.iso.org/iso/home/standards/language_codes.htm), and the country component follows 2-letter codes as defined in [ISO 3166-1 alpha-2](https://www.iso.org/iso/country_codes.htm). |  
|region|string|The **region** property represents the organization's or the user's region. The property contains the user's region (if available) for users who have a valid multigeo license. For users without multigeo licenses, the **region** property contains the organization's region. <br> The **region** value can be any region supported by the Teams payload. Possible values: Americas, Europe and MiddleEast, Asia Pacific, UAE, Australia, Brazil, Canada, Switzerland, Germany, France, India, Japan, South Korea, Norway, Singapore, United Kingdom, South Africa, Sweden, Qatar, Poland, Italy, Israel, USGov Community Cloud, USGov Community Cloud High, USGov Department of Defense, AG08 (USNAT), AG08 (USSEC), and China.|

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
