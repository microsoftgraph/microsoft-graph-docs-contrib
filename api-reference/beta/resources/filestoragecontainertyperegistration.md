---
title: "fileStorageContainerTypeRegistration resource type"
description: "Represents the entity created when a fileStorageContainerType, also known as container type, is registered on a consuming tenant using its ID (containerTypeId)"
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerTypeRegistration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entity created when a [fileStorageContainerType](../resources/filestoragecontainertype.md), also known as container type, is registered on a consuming tenant using its ID (**containerTypeId**). This registration is required to be able to create [containers](../resources/filestoragecontainer.md).

Some **fileStorageContainerTypeRegistration** [settings](../resources/filestoragecontainertyperegistrationsettings.md) can be made different from the defined in the [container type settings](../resources/filestoragecontainertypesettings.md) only if they're set as overridable.

The [applicationPermissionGrants](../resources/filestoragecontainertypeapppermissiongrant.md) define the access privileges of applications on containers of a specific **containerTypeId**. It supports the definition of both application-only and delegated permissions. A container type registration can have more than one [fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) and an application can have access to more than one container type registration. This arrangement allows container access to be shared across applications.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/filestorage-list-containertyperegistrations.md)|[fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) collection|Get a list of the [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) objects and their properties.|
|[Create](../api/filestorage-post-containertyperegistrations.md)|[fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md)|Create or replace a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) object.|
|[Get](../api/filestoragecontainertyperegistration-get.md)|[fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md)|Read the properties and relationships of a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) object.|
|[Update](../api/filestoragecontainertyperegistration-update.md)|[fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md)|Update the properties of a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) object.|
|[Delete](../api/filestorage-delete-containertyperegistrations.md)|None|Delete a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) object.|
|[List application permission grants](../api/filestoragecontainertyperegistration-list-applicationpermissiongrants.md)|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) collection|List all [app permission grants](../resources/filestoragecontainertypeapppermissiongrant.md) in a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md).|
|[Create file storage container type app permission grant](../api/filestoragecontainertyperegistration-post-applicationpermissiongrants.md)|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md)|Create a new [fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) object in a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|billingClassification|fileStorageContainerBillingClassification|The billing type. The possible values are: `standard`, `trial`, `directToCustomer`, `unknownFutureValue`. The default value is `standard`.|
|billingStatus|fileStorageContainerBillingStatus|The billing status. Valid when the billing is set up or with trial **fileStorageContainerType** objects that don't require billing. The possible values are: `invalid`, `valid`, `unknownFutureValue`.|
|etag|String|Used in update scenarios for optimistic concurrency control. Read-only.|
|expirationDateTime|DateTimeOffset|The expiration date. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|id|String|The unique identifier of the **fileStorageContainerTypeRegistration** object. Read-only.|
|name|String|The name of the **fileStorageContainerTypeRegistration**. Read-only.|
|owningAppId|Guid|ID of the application that owns the **fileStorageContainerType**. Read-only.|
|registeredDateTime|DateTimeOffset|The registration date. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|settings|[fileStorageContainerTypeRegistrationSettings](../resources/filestoragecontainertyperegistrationsettings.md)|The settings of the **fileStorageContainerTypeRegistration**.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|applicationPermissionGrants|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) collection|Access privileges of applications on containers.|

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
  "billingClassification": "String",
  "billingStatus": "String",
  "etag": "String",
  "expirationDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "name": "String",
  "owningAppId": "Guid",
  "registeredDateTime": "String (timestamp)",
  "settings": {"@odata.type": "microsoft.graph.fileStorageContainerTypeRegistrationSettings"}
}
```

