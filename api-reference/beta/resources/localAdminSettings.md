---
title: "localAdminSettings resource type"
description: "Controls local administrators on AAD joined devices."
author: "SanDeo-MSFT"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
---
# localAdminSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Controls local administrators on AAD joined devices.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|enableGlobalAdmins|Boolean|Whether or not global administrators are local administrators on all AAD joined devices. Note that this will only apply to future registrations. Default is true.|
|registeringUsers|[deviceRegistrationMembership](../resources/deviceregistrationmembership.md)|Determines the users\groups that become local administrators on AAD joined devices on the device they are registering.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
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
