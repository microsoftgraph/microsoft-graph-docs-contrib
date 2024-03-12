---
title: "appsInstallationOptionsForMac resource type"
description: "Represents the tenant-level Microsoft 365 applications installation options for a MAC platform."
author: "yan-git"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# appsInstallationOptionsForMac resource type

Namespace: microsoft.graph

Represents the tenant-level Microsoft 365 applications installation options for a MAC platform. You can specify whether users can install Microsoft 365 apps on their own MAC devices. If admins choose not to allow it, they can manually deploy apps to users instead.

## Properties
|Property|Type|Description|
|:---|:---|:---|
| isMicrosoft365AppsEnabled | Boolean | Specifies whether users can install Microsoft 365 apps on their MAC devices. The default value is `true`. |
| isSkypeForBusinessEnabled | Boolean | Specifies whether users can install Skype for Business on their MAC devices running OS X El Capitan 10.11 or later. The default value is `true`. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
