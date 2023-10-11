---
title: "appsInstallationOptionsForWindows resource type"
description: "Represents the tenant-level Microsoft 365 Applications installation options for Windows platform."
author: "yan-git"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# appsInstallationOptionsForWindows resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is a Microsoft 365 applications installation options container object for Windows platform. Specify whether users can install Microsoft 365 apps on their own Windows devices. If admins choose not to allow this, they can manually deploy apps to users instead.

## Properties
|Property|Type|Description|
|:---|:---|:---|
| isMicrosoft365AppsEnabled | Boolean | Specifies whether the users can install Microsoft 365 apps (include Skype for Business) on their Windows devices. Default value is `true` meaning users with active license assigned can install. |
| isProjectEnabled| Boolean | Specifies whether the users can install Project on their Windows devices. Default value is `true` meaning users with active license assigned can install. |
| isSkypeForBusinessEnabled | Boolean | Specifies whether the users can install Skype for Business (Standalone) on their Windows devices. Default value is `true` meaning users with active license assigned can install. |
| isVisioEnabled | Boolean | Specifies whether the users can install Visio on their Windows devices. Default value is `true` meaning users with active license assigned can install. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appsInstallationOptionsForWindows"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appsInstallationOptionsForWindows",
  "isMicrosoft365AppsEnabled": "Boolean",
  "isProjectEnabled": "Boolean",
  "isSkypeForBusinessEnabled": "Boolean",
  "isVisioEnabled": "Boolean"
}
```