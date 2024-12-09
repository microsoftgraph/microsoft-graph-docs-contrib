---
title: "deviceTemplate resource type"
description: "DeviceTemplate resource type"
author: "ploegert"
ms.localizationpriority: medium
ms.date: 11/24/2024
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# deviceTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents property values that are common to a set of [device](../resources/device.md) objects.
The properties on the template will be stamped on any `device` object that is created based on this template.

An admin on the customer's tenant will call the `create` API for this entity. Values for `certificateBasedDeviceAuthConfigurationId`, `certificateBasedDeviceAuthConfigurationTenantId`, `deviceAuthorityAppIds` etc. will be provided to the customer by the device authority (manufacturer or reseller).

The `devicetemplate` is immutable.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/template-post-devicetemplates.md)|[deviceTemplate](../resources/devicetemplate.md) | Create a new DeviceTemplate object in the directory.|
|[Get](../api/devicetemplate-get.md) | [deviceTemplate](devicetemplate.md) | Read properties and relationships of deviceTemplate object.|
|[List](../api/template-list-devicetemplates.md) | [deviceTemplate](devicetemplate.md) collection| Retrieve a list of devices registered in the directory. |
|[Delete](../api/device-delete-devicetemplate.md) | None |Delete the deviceTemplate object. |
|[Get deviceTemplate owners](../api/devicetemplate-list-owners.md) | [directoryObject](directoryobject.md) collection | Get a list of owners of the deviceTemplate object. |
|[Add a deviceTemplate owner](../api/devicetemplate-post-owners.md)| None |Post a list of owners of the deviceTemplate object. |
|[Remove a deviceTemplate owner](../api/devicetemplate-delete-owners.md) | None |Remove a list of owners of the deviceTemplate object. |
|[createDeviceFromTemplate](../api/devicetemplate-createdevicefromtemplate.md)|[device](../resources/device.md)| Create new devices from given device template.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String| Inherited from [directoryObject](../resources/directoryobject.md).|
|deletedDateTime|DateTimeOffset|Inherited from [directoryObject](../resources/directoryobject.md).|
|mutualTlsOauthConfigurationId|String|Object ID of CertificateBasedDeviceAuthConfiguration - _Not set for SelfSigned_|
|mutualTlsOauthConfigurationTenantId|String|ID of the tenant that contains the CertificateBasedDeviceAuthConfiguration (Device Authority's EntraID Tenant ID) - _Not set for SelfSigned_|
|deviceAuthority | String | deviceAuthority is used as a generic term that could refer to the device manufacturer or some reseller or supplier who is responsible for provisioning and managing these devices on a customer's EntraID tenant. For example, Acme (manufacturer) makes security cameras that are installed in customer buildings and managed by ABC Company (deviceAuthority). |
|manufacturer|String|Manufacturer name|
|model|String|Model name |
|operatingSystem|String|OS type |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceInstances|[device](../resources/device.md) collection|Collection of device objects created based on this template|
|owners|[directoryObject](../resources/directoryobject.md) collection|Collection of objects that can manage the entity and the device objects created based on this template |

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
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "mutualTlsOauthConfigurationId": "String",
  "mutualTlsOauthConfigurationTenantId": "String",
  "deviceAuthority": "String",
  "manufacturer": "String",
  "model": "String",
  "operatingSystem": "String"
}
```

