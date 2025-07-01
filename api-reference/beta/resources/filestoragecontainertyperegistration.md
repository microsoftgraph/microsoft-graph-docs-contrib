---
title: "fileStorageContainerTypeRegistration resource type"
description: "**TODO: Add Description**"
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerTypeRegistration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/filestorage-list-containertyperegistrations.md)|[fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) collection|Get a list of the fileStorageContainerTypeRegistration objects and their properties.|
|[Create](../api/filestorage-post-containertyperegistrations.md)|[fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md)|Create a new fileStorageContainerTypeRegistration object.|
|[Get](../api/filestoragecontainertyperegistration-get.md)|[fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md)|Read the properties and relationships of a fileStorageContainerTypeRegistration object.|
|[Update](../api/filestoragecontainertyperegistration-update.md)|[fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md)|Update the properties of a fileStorageContainerTypeRegistration object.|
|[Delete](../api/filestorage-delete-containertyperegistrations.md)|None|Delete a fileStorageContainerTypeRegistration object.|
|[List applicationPermissionGrants](../api/filestoragecontainertyperegistration-list-applicationpermissiongrants.md)|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) collection|**TODO: Add a useful description.**|
|[Create fileStorageContainerTypeAppPermissionGrant](../api/filestoragecontainertyperegistration-post-applicationpermissiongrants.md)|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md)|Create a new fileStorageContainerTypeAppPermissionGrant object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|billingClassification|fileStorageContainerBillingClassification|**TODO: Add Description**.The possible values are: `standard`, `trial`, `directToCustomer`, `unknownFutureValue`.|
|billingStatus|fileStorageContainerBillingStatus|**TODO: Add Description**.The possible values are: `invalid`, `valid`, `unknownFutureValue`.|
|etag|String|**TODO: Add Description**|
|expirationDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|name|String|**TODO: Add Description**|
|owningAppId|Guid|**TODO: Add Description**|
|registeredDateTime|DateTimeOffset|**TODO: Add Description**|
|settings|[fileStorageContainerTypeRegistrationSettings](../resources/filestoragecontainertyperegistrationsettings.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|applicationPermissionGrants|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.fileStorageContainerTypeRegistration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileStorageContainerTypeRegistration",
  "id": "String (identifier)",
  "name": "String",
  "owningAppId": "Guid",
  "billingClassification": "String",
  "billingStatus": "String",
  "registeredDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "settings": {
    "@odata.type": "microsoft.graph.fileStorageContainerTypeRegistrationSettings"
  },
  "etag": "String"
}
```

