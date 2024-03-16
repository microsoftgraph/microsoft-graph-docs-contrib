---
title: "remoteDesktopSecurityConfiguration resource type"
description: "Represents the configuration for a remoteDesktopSecurityConfiguration object on the servicePrincipal to enable the Microsoft Entra Remote Desktop Services (RDS) authentication protocol and single sign-on (SSO) for clients connecting over RDP to devices that belong to target device groups."
author: "SanDeo-MSFT"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# remoteDesktopSecurityConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration for the remoteDesktopSecurityConfiguration object on the servicePrincipal.

Use this configuration to enable the Microsoft Entra ID [Remote Desktop Services (RDS) authentication protocol](/openspecs/windows_protocols/ms-rdpbcgr/dc43f040-d75d-49a9-90c6-0c9999281136), for Microsoft Entra ID to authenticate users to [joined](/azure/active-directory/devices/concept-directory-join) or [hybrid joined](/azure/active-directory/devices/concept-hybrid-join) devices. The configuration also enables single sign-on (SSO) when RDP clients connect to a Microsoft Entra joined or Microsoft Entra hybrid joined device that is part of the **targetDeviceGroups** object.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create remoteDesktopSecurityConfiguration](../api/serviceprincipal-post-remotedesktopsecurityconfiguration.md)|[remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md)|Create a new [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on the servicePrincipal object.|
|[Get remoteDesktopSecurityConfiguration](../api/remotedesktopsecurityconfiguration-get.md)|[remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md)|Read the properties and relationships of a [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on the servicePrincipal object.|
|[Update remoteDesktopSecurityConfiguration](../api/remotedesktopsecurityconfiguration-update.md)|[remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md)|Update the properties of a [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on the servicePrincipal object.|
|[Delete remoteDesktopSecurityConfiguration](../api/serviceprincipal-delete-remotedesktopsecurityconfiguration.md)|None|Delete a [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on a servicePrincipal object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the RDS security configuration. Inherited from [entity](../resources/entity.md).|
|isRemoteDesktopProtocolEnabled|Boolean|Determines if Microsoft Entra ID RDS authentication protocol for RDP is enabled.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|targetDeviceGroups|[targetDeviceGroup](../resources/targetdevicegroup.md) collection|The collection of target device groups that are associated with the RDS security configuration that will be enabled for SSO when a client connects to the target device over RDP using the new Microsoft Entra ID RDS authentication protocol.|

## JSON representation
The following JSON representation shows the resource type.
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
