---
title: "remoteDesktopSecurityConfiguration resource type"
description: "Represents configuration for remote desktop resource on an application."
author: "SanDeo-MSFT"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# remoteDesktopSecurityConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents configuration for remote desktop resource on an application. This resource is a navigation property.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List remoteDesktopSecurityConfigurations](../api/serviceprincipal-list-remotedesktopsecurityconfiguration.md)|[remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) collection|Get a list of the [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) objects and their properties.|
|[Create remoteDesktopSecurityConfiguration](../api/serviceprincipal-post-remotedesktopsecurityconfiguration.md)|[remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md)|Create a new [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object.|
|[Get remoteDesktopSecurityConfiguration](../api/remotedesktopsecurityconfiguration-get.md)|[remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md)|Read the properties and relationships of a [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object.|
|[Update remoteDesktopSecurityConfiguration](../api/remotedesktopsecurityconfiguration-update.md)|[remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md)|Update the properties of a [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object.|
|[Delete remoteDesktopSecurityConfiguration](../api/serviceprincipal-delete-remotedesktopsecurityconfiguration.md)|None|Delete a [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object.|
|[List targetDeviceGroups](../api/remotedesktopsecurityconfiguration-list-targetdevicegroups.md)|[targetDeviceGroup](../resources/targetdevicegroup.md) collection|Get the targetDeviceGroup resources from the targetDeviceGroups navigation property.|
|[Create targetDeviceGroup](../api/remotedesktopsecurityconfiguration-post-targetdevicegroups.md)|[targetDeviceGroup](../resources/targetdevicegroup.md)|Create a new targetDeviceGroup object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the remote desktop security configuration. Inherited from [entity](../resources/entity.md).|
|isRemoteDesktopProtocolEnabled|Boolean|This determines if remote desktop protocol is enabled or not.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|targetDeviceGroups|[targetDeviceGroup](../resources/targetdevicegroup.md) collection|The collection of target device groups associated with the remote desktop security configuration.*|

## JSON representation
The following is a JSON representation of the resource.
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

