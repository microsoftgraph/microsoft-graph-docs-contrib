---
title: "endUserSettings resource type"
description: "Settings that control the end user experience for access package suggestions and resource discovery in Microsoft Entra entitlement management."
ms.localizationpriority: medium
author: "myra-ramdenbourg"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 09/18/2025
---

# endUserSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings that control the end user experience for access package suggestions and resource discovery in [Microsoft Entra entitlement management](entitlementmanagement-overview.md). These settings configure how suggestions are provided to end users and what level of related people insights are shown.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/endusersettings-get.md) | [endUserSettings](endusersettings.md) | Read the properties and relationships of an **endUserSettings** object. |
| [Update](../api/endusersettings-update.md) | [endUserSettings](endusersettings.md) | Update the properties of an **endUserSettings** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|relatedPeopleInsightLevel|accessPackageSuggestionRelatedPeopleInsightLevel|The level of related people insights to show in access package suggestions. The possible values are: `disabled`, `count`, `countAndNames`, `unknownFutureValue`.|
|showApproverDetailsToMembers|Boolean|Indicates whether approver details are shown to end users. When `true`, approver information is visible to members.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.endUserSettings",
  "keyProperty": ""
}-->

```json
{
  "relatedPeopleInsightLevel": "String",
  "showApproverDetailsToMembers": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2025-09-18 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "endUserSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
