---
title: "localAdminPasswordSettings resource type"
description: "Represents the policy scope of a Microsoft Entra tenant that controls the Local Admin Password Solution (LAPS) setting."
author: "sandeo-MSFT"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 07/22/2024
---
# localAdminPasswordSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy scope of the Microsoft Entra tenant that controls the Local Admin Password Solution (LAPS) setting. Configured in the **localAdminPassword** property of [deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Specifies whether LAPS is enabled. The default value is `false`. An admin can set it to true to enable Local Admin Password Solution (LAPS) within their organization.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.localAdminPasswordSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.localAdminPasswordSettings",
  "isEnabled": "Boolean"
}
```
