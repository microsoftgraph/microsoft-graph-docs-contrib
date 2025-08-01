---
title: "localAdminSettings resource type"
description: "Controls local administrators on Microsoft Entra-joined devices."
author: "SanDeo-MSFT"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 06/03/2024
ms.custom: sfi-ga-nochange
---
# localAdminSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Controls local administrators on Microsoft Entra-joined devices.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|enableGlobalAdmins|Boolean|Indicates whether global administrators are local administrators on all Microsoft Entra-joined devices. This setting only applies to future registrations. Default is `true`.|
|registeringUsers|[deviceRegistrationMembership](../resources/deviceregistrationmembership.md)|Determines the users and groups that become local administrators on Microsoft Entra joined devices that they register.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.localAdminSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.localAdminSettings",
  "enableGlobalAdmins": "Boolean",
  "registeringUsers": {
    "@odata.type": "microsoft.graph.deviceRegistrationMembership",
  }
}
```
