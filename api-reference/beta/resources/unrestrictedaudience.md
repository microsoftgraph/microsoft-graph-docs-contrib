---
title: "unrestrictedAudience resource type"
description: "Indicates there are no restrictions on the configured signInAudience value"
author: "psignoret"
ms.date: 11/14/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# unrestrictedAudience resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **unrestrictedAudience** type is used as the **signInAudienceRestrictions** value for an [application](application.md) resource to indicate that there are no restrictions on what is allowed by the application's **signInAudience** value.

Inherits from [signInAudienceRestrictionsBase](../resources/signinaudiencerestrictionsbase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|kind|kind|If provided, must be `unrestricted`. Optional. Inherited from [signInAudienceRestrictionsBase](../resources/signinaudiencerestrictionsbase.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.unrestrictedAudience"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unrestrictedAudience",
  "kind": "String"
}
```