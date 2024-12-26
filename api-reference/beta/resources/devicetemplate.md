---
title: "deviceTemplate resource type"
description: "Represents property values that are common to a set of device objects."
author: "ploegert"
ms.localizationpriority: medium
ms.date: 11/24/2024
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# deviceTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents property values that are common to a set of [device](../resources/device.md) objects. The properties on the template are stamped on any **device** object that is created based on this template. This object is immutable. 

Inherits from [directoryObject](../resources/directoryobject.md). 

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/template-list-devicetemplates.md) | [deviceTemplate](devicetemplate.md) collection| Get a list of [deviceTemplate](../resources/devicetemplate.md) objects registered in the directory. |
|[Create](../api/template-post-devicetemplates.md)|[deviceTemplate](../resources/devicetemplate.md) | Create a new [deviceTemplate](../resources/devicetemplate.md) used to identify attributes and manage a group of devices with similar characteristics. |
|[Get](../api/devicetemplate-get.md) | [deviceTemplate](devicetemplate.md) | Get the properties and relationships of a [deviceTemplate](../resources/devicetemplate.md) object. |
|[Delete](../api/devicetemplate-delete.md) | None |Delete a registered [deviceTemplate](../resources/devicetemplate.md). |
|[List owners](../api/devicetemplate-list-owners.md) | [directoryObject](directoryobject.md) collection | Get a list of owners for a [deviceTemplate](../resources/devicetemplate.md) object. |
|[Add owner](../api/devicetemplate-post-owners.md)| None |Add a new owner to a [deviceTemplate](../resources/devicetemplate.md) object. |
|[Remove owner](../api/devicetemplate-delete-owners.md) | None |Remove an owner from a [deviceTemplate](../resources/devicetemplate.md) object. |
|[Create device from template](../api/devicetemplate-createdevicefromtemplate.md)|[device](../resources/device.md)| Create a new [device](../resources/device.md) from a [deviceTemplate](../resources/devicetemplate.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|                                                                      
|deletedDateTime                      |DateTimeOffset     |Date and time when this object was deleted. Always `null` when the object hasn't been deleted. Inherited from [directoryObject](../resources/directoryobject.md). |
| deviceAuthority                    | String            | A tenant-defined name for the party that's responsible for provisioning and managing devices on the Microsoft Entra tenant. For example, Tailwind Traders (the manufacturer) makes security cameras that are installed in customer buildings and managed by Lakeshore Retail (the device authority). This value is provided to the customer by the device authority (manufacturer or reseller). |
| id                                 | String            | The unique identifier for the object. Inherited from [directoryObject](../resources/directoryobject.md). Read-only. |
| manufacturer                       | String            | Manufacturer name. |
| model                              | String            | Model name. |
| mutualTlsOauthConfigurationId      | String            | Object ID of the [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md). This value isn't set if self-signed certificates are used. This value is provided to the customer by the device authority (manufacturer or reseller). |
| mutualTlsOauthConfigurationTenantId | String           | ID (tenant ID for device authority) of the tenant that contains the [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md). This value isn't set if self-signed certificates are used. This value is provided to the customer by the device authority (manufacturer or reseller). |
| operatingSystem                    | String            | Operating system type.    |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceInstances|[device](../resources/device.md) collection|Collection of **device** objects created based on this template.|
|owners|[directoryObject](../resources/directoryobject.md) collection|Collection of objects that can manage the entity and the **device** objects created based on this template. |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceTemplate",
  "baseType": "microsoft.graph.directoryObject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceTemplate",
  "deletedDateTime": "String (timestamp)",
  "deviceAuthority": "String",
  "id": "String (identifier)",
  "manufacturer": "String",
  "model": "String",
  "mutualTlsOauthConfigurationId": "String",
  "mutualTlsOauthConfigurationTenantId": "String",
  "operatingSystem": "String"
}
```

