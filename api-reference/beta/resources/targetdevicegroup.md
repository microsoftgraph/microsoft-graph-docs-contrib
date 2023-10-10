---
title: "targetDeviceGroup resource type"
description: "This represents the targetDeviceGroup configured for the remoteDesktopSecurityConfiguration object on the servicePrincipal."
author: "SanDeo-MSFT"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# targetDeviceGroup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This configuration represents the targetDeviceGroup for the remoteDesktopSecurityConfiguration object on the servicePrincipal. This configuration enables SSO using the new Microsoft Entra ID [Remote Desktop Services (RDS) authentication protocol](/openspecs/windows_protocols/ms-rdpbcgr/dc43f040-d75d-49a9-90c6-0c9999281136) when authenticating a user to a [Microsoft Entra joined](/azure/active-directory/devices/concept-directory-join) or [Microsoft Entra hybrid joined](/azure/active-directory/devices/concept-hybrid-join) device that is a member of the targetDeviceGroup.  

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
Here's a JSON representation of the resource.
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
