---
title: "device resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# device resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [directoryObject](../resources/directoryobject.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List devices](../api/device-list.md)|[device](../resources/device.md) collection|Get a list of the [device](../resources/device.md) objects and their properties.|
|[Create device](../api/device-post-devices.md)|[device](../resources/device.md)|Create a new [device](../resources/device.md) object.|
|[Get device](../api/device-get.md)|[device](../resources/device.md)|Read the properties and relationships of a [device](../resources/device.md) object.|
|[Update device](../api/device-update.md)|[device](../resources/device.md)|Update the properties of a [device](../resources/device.md) object.|
|[Delete device](../api/device-delete.md)|None|Deletes a [device](../resources/device.md) object.|
|[List memberOf](../api/device-list-memberof.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the memberOf navigation property.|
|[Add memberOf](../api/device-post-memberof.md)|[directoryObject](../resources/directoryobject.md)|Add memberOf by posting to the memberOf collection.|
|[List registeredOwners](../api/device-list-registeredowners.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the registeredOwners navigation property.|
|[Add registeredOwners](../api/device-post-registeredowners.md)|[directoryObject](../resources/directoryobject.md)|Add registeredOwners by posting to the registeredOwners collection.|
|[List registeredUsers](../api/device-list-registeredusers.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the registeredUsers navigation property.|
|[Add registeredUsers](../api/device-post-registeredusers.md)|[directoryObject](../resources/directoryobject.md)|Add registeredUsers by posting to the registeredUsers collection.|
|[List transitiveMemberOf](../api/device-list-transitivememberof.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the transitiveMemberOf navigation property.|
|[Add transitiveMemberOf](../api/device-post-transitivememberof.md)|[directoryObject](../resources/directoryobject.md)|Add transitiveMemberOf by posting to the transitiveMemberOf collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountEnabled|Boolean|**TODO: Add Description**|
|alternativeSecurityIds|[alternativeSecurityId](../resources/alternativesecurityid.md) collection|**TODO: Add Description**|
|approximateLastSignInDateTime|DateTimeOffset|**TODO: Add Description**|
|complianceExpirationDateTime|DateTimeOffset|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|**TODO: Add Description**|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|deviceCategory|String|**TODO: Add Description**|
|deviceId|String|**TODO: Add Description**|
|deviceMetadata|String|**TODO: Add Description**|
|deviceOwnership|String|**TODO: Add Description**|
|deviceVersion|Int32|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|domainName|String|**TODO: Add Description**|
|enrollmentProfileName|String|**TODO: Add Description**|
|enrollmentType|String|**TODO: Add Description**|
|extensionAttributes|[onPremisesExtensionAttributes](../resources/onpremisesextensionattributes.md)|**TODO: Add Description**|
|hostnames|String collection|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|isCompliant|Boolean|**TODO: Add Description**|
|isManaged|Boolean|**TODO: Add Description**|
|isManagementRestricted|Boolean|**TODO: Add Description**|
|isRooted|Boolean|**TODO: Add Description**|
|managementType|String|**TODO: Add Description**|
|onPremisesLastSyncDateTime|DateTimeOffset|**TODO: Add Description**|
|onPremisesSyncEnabled|Boolean|**TODO: Add Description**|
|operatingSystem|String|**TODO: Add Description**|
|operatingSystemVersion|String|**TODO: Add Description**|
|physicalIds|String collection|**TODO: Add Description**|
|profileType|String|**TODO: Add Description**|
|registrationDateTime|DateTimeOffset|**TODO: Add Description**|
|systemLabels|String collection|**TODO: Add Description**|
|trustType|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|memberOf|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|registeredOwners|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|registeredUsers|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|transitiveMemberOf|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.device",
  "baseType": "Microsoft.DirectoryServices.directoryObject",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.device",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "accountEnabled": "Boolean",
  "alternativeSecurityIds": [
    {
      "@odata.type": "microsoft.graph.alternativeSecurityId"
    }
  ],
  "approximateLastSignInDateTime": "String (timestamp)",
  "complianceExpirationDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "customSecurityAttributes": {
    "@odata.type": "microsoft.graph.customSecurityAttributeValue"
  },
  "deviceCategory": "String",
  "deviceId": "String",
  "deviceMetadata": "String",
  "deviceOwnership": "String",
  "deviceVersion": "Integer",
  "displayName": "String",
  "domainName": "String",
  "enrollmentProfileName": "String",
  "enrollmentType": "String",
  "extensionAttributes": {
    "@odata.type": "microsoft.graph.onPremisesExtensionAttributes"
  },
  "isCompliant": "Boolean",
  "isManaged": "Boolean",
  "isManagementRestricted": "Boolean",
  "isRooted": "Boolean",
  "managementType": "String",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesSyncEnabled": "Boolean",
  "operatingSystem": "String",
  "operatingSystemVersion": "String",
  "hostnames": [
    "String"
  ],
  "physicalIds": [
    "String"
  ],
  "profileType": "String",
  "registrationDateTime": "String (timestamp)",
  "systemLabels": [
    "String"
  ],
  "trustType": "String"
}
```

