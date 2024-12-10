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

Represents property values that are common to a set of [device](../resources/device.md) objects. The properties on the template are stamped on any **device** object that is created based on this template.

An admin on the customer's tenant calls the `create` API for this entity. Values for `certificateBasedDeviceAuthConfigurationId`, `certificateBasedDeviceAuthConfigurationTenantId`, `deviceAuthorityAppIds` etc. will be provided to the customer by the device authority (manufacturer or reseller).

The `devicetemplate` is immutable.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/template-list-devicetemplates.md) | [deviceTemplate](devicetemplate.md) collection| Retrieve a list of devices registered in the directory. |
|[Create](../api/template-post-devicetemplates.md)|[deviceTemplate](../resources/devicetemplate.md) | Create a new DeviceTemplate object in the directory.|
|[Get](../api/devicetemplate-get.md) | [deviceTemplate](devicetemplate.md) | Read properties and relationships of deviceTemplate object.|
|[Delete](../api/device-delete-devicetemplate.md) | None |Delete the deviceTemplate object. |
|[List owners](../api/devicetemplate-list-owners.md) | [directoryObject](directoryobject.md) collection | Get a list of owners of the deviceTemplate object. |
|[Add owner](../api/devicetemplate-post-owners.md)| None |Post a list of owners of the deviceTemplate object. |
|[Remove owner](../api/devicetemplate-delete-owners.md) | None |Remove a list of owners of the deviceTemplate object. |
|[Create device from template](../api/devicetemplate-createdevicefromtemplate.md)|[device](../resources/device.md)| Create new devices from given device template.|

## Properties
|Property|Type|Description|
|:---|:---|:---|                                                                      |
| deviceAuthority                    | String            | A generic term that can refer to the device manufacturer or a reseller or supplier responsible for provisioning and managing devices on a customer's AAD tenant. For example, Acme (**manufacturer**) makes security cameras installed in customer buildings and managed by ABC Company (**deviceAuthority**). |
| id                                 | String            | Inherited from [directoryObject](../resources/directoryobject.md).                                                                                  |
| manufacturer                       | String            | Manufacturer name.                                                                                                                                     |
| model                              | String            | Model name.                                                                                                                                           |
| mutualTlsOauthConfigurationId      | String            | Object ID of CertificateBasedDeviceAuthConfiguration. _Not set for SelfSigned._                                                                       |
| mutualTlsOauthConfigurationTenantId | String           | ID of the tenant that contains the CertificateBasedDeviceAuthConfiguration (the EntraID tenant ID of the device authority). _Not set for SelfSigned._              |
| operatingSystem                    | String            | Operating system type.                                                                                                                                             |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceInstances|[device](../resources/device.md) collection|Collection of device objects created based on this template.|
|owners|[directoryObject](../resources/directoryobject.md) collection|Collection of objects that can manage the entity and the device objects created based on this template. |

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
  "deviceAuthority": "String",
  "id": "String (identifier)",
  "manufacturer": "String",
  "model": "String",
  "mutualTlsOauthConfigurationId": "String",
  "mutualTlsOauthConfigurationTenantId": "String",
  "operatingSystem": "String"
}
```

