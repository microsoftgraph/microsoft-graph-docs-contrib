---
title: "appsInstallationOptionsForMac resource type"
description: "Represents the tenant-level Microsoft 365 Applications installation options for MAC platform."
author: "yade"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# appsInstallationOptionsForMac resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is a Microsoft 365 applications installation options container object for MAC platform. Specify whether users can install Microsoft 365 apps on their own Windows devices. If admins choose not to allow this, they can manually deploy apps to users instead.

## Properties
|Property|Type|Description|
|:---|:---|:---|
| isMicrosoft365AppsEnabled | Boolean | Specifes whether the users can install Microsoft 365 apps on their Windows devices. Default value is `true` meaning users with active license assigned can install. |
| isSkypeForBusinessEnabled | Boolean | Specifes whether the users can install Skype for Business (X EI Capitan 10.11 or higher) on their Windows devices. Default value is `true` meaning users with active license assigned can install. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appsInstallationOptionsForMac"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appsInstallationOptionsForMac",
  "isMicrosoft365AppsEnabled": "Boolean",
  "isSkypeForBusinessEnabled": "Boolean"
}
```