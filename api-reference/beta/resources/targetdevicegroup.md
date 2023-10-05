---
title: "targetDeviceGroup resource type"
description: "This represents the target device group configured for the remote desktop security configuration resource on the servicePrincipal."
author: "SanDeo-MSFT"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# targetDeviceGroup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This represents the target device group that is configured for the remote desktop security configuration resource on the servicePrincipal. This enables SSO using the RDS Entra ID authentication protocol when a user authenticates over RDP to a Microsoft Entra joined or Microsoft Entra hybrid joined devices that is a member of configured target device group.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List targetDeviceGroups](../api/remotedesktopsecurityconfiguration-list-targetdevicegroups.md)|[targetDeviceGroup](../resources/targetdevicegroup.md) collection|Get a list of the [targetDeviceGroup](../resources/targetdevicegroup.md) objects and their properties for the [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on the servicePrincipal.|
|[Create targetDeviceGroup](../api/remotedesktopsecurityconfiguration-post-targetdevicegroups.md)|[targetDeviceGroup](../resources/targetdevicegroup.md)|Create a new [targetDeviceGroup](../resources/targetdevicegroup.md) object for the [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on the servicePrincipal.|
|[Get targetDeviceGroup](../api/targetdevicegroup-get.md)|[targetDeviceGroup](../resources/targetdevicegroup.md)|Read the properties and relationships of a [targetDeviceGroup](../resources/targetdevicegroup.md) object for the [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) on a servicePrincipal.|
|[Update targetDeviceGroup](../api/targetdevicegroup-update.md)|[targetDeviceGroup](../resources/targetdevicegroup.md)|Update the properties of a [targetDeviceGroup](../resources/targetdevicegroup.md) object for the [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) on the servicePrincipal.|
|[Delete targetDeviceGroup](../api/remotedesktopsecurityconfiguration-delete-targetdevicegroups.md)|None|Delete a [targetDeviceGroup](../resources/targetdevicegroup.md) object for the [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) on the servicePrincipal.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name for the target device group|
|id|String|Object id of the group in the directory. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.targetDeviceGroup",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.targetDeviceGroup",
  "id": "String (identifier)",
  "displayName": "String"
}
```

