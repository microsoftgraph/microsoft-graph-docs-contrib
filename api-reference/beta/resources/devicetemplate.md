---
title: "deviceTemplate resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# deviceTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents property values that are common to a set of [device](../resources/device.md) objects.
The properties on the template will be stamped on any `device` object that is created based on this template.

An admin on the customer's tenant will call the `create` API for this entity. Values for `certificateBasedDeviceAuthConfigurationId`, `certificateBasedDeviceAuthConfigurationTenantId`, `deviceAuthorityAppIds` etc. will be provided to the customer by the device authority (manufacturer or reseller).

The `devicetemplate` is immutable, except for `deviceAuthorityAppIds`. No other updates are supported.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/template-post-devicetemplates.md)|[deviceTemplate](../resources/devicetemplate.md) | Create a new DeviceTemplate object in the directory.|
|[Get deviceTemplate](../api/devicetemplate-get.md) | [deviceTemplate](devicetemplate.md) | Read properties and relationships of deviceTemplate object.|
|[List deviceTemplate](../api/template-list-devicetemplates.md) | [deviceTemplate](devicetemplate.md) collection| Retrieve a list of devices registered in the directory. |
|[Update deviceTemplate](../api/devicetemplate-update.md) | [deviceTemplate](devicetemplate.md)  | Update the properties of the deviceTemplate object. |
|[Delete deviceTemplate](../api/device-delete-devicetemplate.md) | None |Delete the deviceTemplate object. |
|[Get deviceTemplate owners](../api/devicetemplate-list-owners.md) | [directoryObject](https://docs.microsoft.com/en-us/graph/api/resources/directoryobject) collection | Get a list of owners of the deviceTemplate object. |
|[Add a deviceTemplate owner](../api/devicetemplate-post-owners.md)| None |Post a list of owners of the deviceTemplate object. |
|[Remove a deviceTemplate owner](../api/devicetemplate-delete-owners.md) | None |Remove a list of owners of the deviceTemplate object. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|`mutualTlsOauthConfigurationId`|`String`|Object Id of CertificateBasedDeviceAuthConfiguration - _Not set for SelfSigned_|
|`mutualTlsOauthConfigurationTenantId`|`String`|Id of the tenant that contains the CertificateBasedDeviceAuthConfiguration (Device Authority's AAD Tenant ID) - _Not set for SelfSigned_|
|`deviceAuthority` | `String` | `deviceAuthority` is used as a generic term that could refer to the device manufacturer or some reseller or supplier who is responsible for provisioning and managing these devices on a customer's AAD tenant. For example, Acme (`manufacturer`) makes security cameras that are installed in customer buildings and managed by ABC Company (`deviceAuthority`). |
|`manufacturer`|`String`|Manufacturer name|
|`model`|`String`|Model name | 
|`operatingSystem`|`String`|OS type | 

## CSDL
```xml
<EntityType Name="deviceTemplate" ags:IsHidden="true">
  <Key>
    <PropertyRef Name="id" />
  </Key>
  <Property Name="id" Type="Edm.String" Nullable="false" />
  <Property Name="mutualTlsOauthConfigurationId" Type="Edm.String" />
  <Property Name="mutualTlsOauthConfigurationTenantId" Type="Edm.String" />
  <Property Name="deviceAuthority" Type="Edm.String" />
  <Property Name="manufacturer" Type="Edm.String" />
  <Property Name="model" Type="Edm.String" />
  <Property Name="operatingSystem" Type="Edm.String" />
  <NavigationProperty Name="deviceInstances" Type="Collection(graph.device)"/>
  <NavigationProperty Name="owners" Type="Collection(graph.directoryObject)"/>
</EntityType>
```

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|`deviceInstances`|`Collection(microsoft.graph.device)`|Collection of `device` objects created based on this template|
|`owners`|`Collection(microsoft.graph.directoryObject)`|Collection of objects that can manage the entity and the device objects created based on this template |

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
  "mutualTlsOauthConfigurationId": "String",
  "mutualTlsOauthConfigurationTenantId": "String",
  "deviceAuthority": "String",
  "deviceAuthorityAppIds": "String",
  "manufacturer": "String",
  "model": "String",
  "operatingSystem": "String"
}
```
## See also

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)