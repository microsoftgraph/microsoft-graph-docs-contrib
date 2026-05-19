---
title: "approvedClientApp resource type"
description: "Represents an approved client application that can connect to remote desktops using the Remote Desktop Services (RDS) authentication protocol."
author: "mjsantani"
ms.date: 11/24/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# approvedClientApp resource type

Namespace: microsoft.graph

Represents an approved client application that can connect to remote desktops using the [Remote Desktop Services (RDS)](../resources/remotedesktopsecurityconfiguration.md) authentication protocol.

Represents the approved client apps configured for the [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on the service principal. This configuration along with [targetDeviceGroup](../resources/targetdevicegroup.md) enables Single Sign on (SSO) using the Microsoft Entra ID [Remote Desktop Services (RDS) authentication protocol](/openspecs/windows_protocols/ms-rdpbcgr/dc43f040-d75d-49a9-90c6-0c9999281136), when Microsoft Entra ID authenticates a user to a [joined](/entra/identity/devices/concept-directory-join) or [hybrid joined](/entra/identity/devices/concept-hybrid-join) device that is a member of the target device group. 

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/remotedesktopsecurityconfiguration-list-approvedclientapps.md)|[approvedClientApp](../resources/approvedclientapp.md) collection|Get a list of the [approvedClientApp](../resources/approvedclientapp.md) objects and their properties.|
|[Create](../api/remotedesktopsecurityconfiguration-post-approvedclientapps.md)|[approvedClientApp](../resources/approvedclientapp.md)|Create a new [approvedClientApp](../resources/approvedclientapp.md) object.|
|[Get](../api/approvedclientapp-get.md)|[approvedClientApp](../resources/approvedclientapp.md)|Read the properties and relationships of an [approvedClientApp](../resources/approvedclientapp.md) object.|
|[Update](../api/approvedclientapp-update.md)|[approvedClientApp](../resources/approvedclientapp.md)|Update the properties of an [approvedClientApp](../resources/approvedclientapp.md) object.|
|[Delete](../api/remotedesktopsecurityconfiguration-delete-approvedclientapps.md)|None|Delete an [approvedClientApp](../resources/approvedclientapp.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the approved client application.|
|id|String|The unique identifier for the approved client application. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approvedClientApp",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approvedClientApp",
  "id": "String (identifier)",
  "displayName": "String"
}
```
