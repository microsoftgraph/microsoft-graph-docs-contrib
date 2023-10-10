---
title: "remoteDesktopSecurityConfiguration resource type"
description: "Represents configuration for remoteDesktopSecurityConfiguration object on the servicePrincipal to enable new RDS Entra ID authentication protocol and SSO for clients connecting over RDP to devices that belong to target device groups."
author: "SanDeo-MSFT"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# remoteDesktopSecurityConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration for the remoteDesktopSecurityConfiguration object on the servicePrincipal. Use this configuration to enable the new Microsoft Entra ID [Remote Desktop Services (RDS) authentication protocol](/openspecs/windows_protocols/ms-rdpbcgr/dc43f040-d75d-49a9-90c6-0c9999281136) to authenticate a user to [Microsoft Entra joined](/azure/active-directory/devices/concept-directory-join) or [Microsoft Entra hybrid joined](/azure/active-directory/devices/concept-hybrid-join) devices. Additionally, IT administrators can also enable single sign-on (SSO) when RDP clients connect to a Microsoft Entra joined or Microsoft Entra hybrid joined device that is part of the target device groups.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create remoteDesktopSecurityConfiguration](../api/serviceprincipal-post-remotedesktopsecurityconfiguration.md)|[remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md)|Create a new [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on the servicePrincipal object.|
|[Get remoteDesktopSecurityConfiguration](../api/serviceprincipal-get-remotedesktopsecurityconfiguration.md)|[remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md)|Read the properties and relationships of a [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on the servicePrincipal object.|
|[Update remoteDesktopSecurityConfiguration](../api/remotedesktopsecurityconfiguration-update.md)|[remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md)|Update the properties of a [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on the servicePrincipal object.|
|[Delete remoteDesktopSecurityConfiguration](../api/serviceprincipal-delete-remotedesktopsecurityconfiguration.md)|None|Delete a [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on a servicePrincipal object.|
|[List targetDeviceGroups](../api/remotedesktopsecurityconfiguration-list-targetdevicegroups.md)|[targetDeviceGroup](../resources/targetdevicegroup.md) collection|Get the [targetDeviceGroup](../resources/targetdevicegroup.md) objects on the [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on the servicePrincipal object.|
|[Create targetDeviceGroup](../api/remotedesktopsecurityconfiguration-post-targetdevicegroups.md)|[targetDeviceGroup](../resources/targetdevicegroup.md)|Create a new [targetDeviceGroup](../resources/targetdevicegroup.md) object on the [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on the servicePrincipal object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the remote desktop security configuration. Inherited from [entity](../resources/entity.md).|
|isRemoteDesktopProtocolEnabled|Boolean|Determines if RDS Entra ID authentication protocol for RDP is enabled or not.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|targetDeviceGroups|[targetDeviceGroup](../resources/targetdevicegroup.md) collection|The collection of target device groups associated with the remote desktop security configuration that will be enabled for SSO when a client connects to the target device over RDP using the new RDS Entra ID authentication protocol.|

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.remoteDesktopSecurityConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.remoteDesktopSecurityConfiguration",
  "id": "String (identifier)",
  "isRemoteDesktopProtocolEnabled": "Boolean"
}
```
