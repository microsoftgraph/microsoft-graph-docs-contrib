---
title: "appsInstallationOptionsForMac resource type"
description: "Represents the tenant-level Microsoft 365 Applications installation options for MAC platform."
author: "yan-git"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# appsInstallationOptionsForMac resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is a Microsoft 365 applications installation options container object for MAC platform. Specify whether users can install Microsoft 365 apps on their own MAC devices. If admins choose not to allow this, they can manually deploy apps to users instead.

## Properties
|Property|Type|Description|
|:---|:---|:---|
| isMicrosoft365AppsEnabled | Boolean | Specifies if users can install Microsoft 365 apps on their MAC devices. The default value is `true`, meaning a user with an active license assigned can install. |
| isSkypeForBusinessEnabled | Boolean | Specifies if users can install Skype for Business on their MAC devices running OS X El Capitan 10.11 or later. The default value is `true`, meaning a user with an active license assigned can install. |

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