---
title: "deviceRegistrationMembership resource type"
description: "An abstract resource type that indicates the scope the device registration policy applies to."
author: "SanDeo-MSFT"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# deviceRegistrationMembership resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract resource type indicating the scope that a particular policy applies to. Derived types are [noDeviceRegistrationMembership](../resources/nodeviceregistrationmembership.md), [allDeviceRegistrationMembership](../resources/alldeviceregistrationmembership.md) and [enumeratedDeviceRegistrationMembership](../resources/enumerateddeviceregistrationmembership.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceRegistrationMembership"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceRegistrationMembership"
}
```
