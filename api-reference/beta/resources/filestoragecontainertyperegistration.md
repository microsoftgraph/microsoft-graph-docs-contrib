---
title: "fileStorageContainerTypeRegistration resource type"
description: "The object created when a fileStorageContainerType is registered in a tenant"
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerTypeRegistration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A fileStorageContainerTypeRegistration is the entity created when a 
[fileStorageContainerType][fileStorageContainerType], also known as container type,
 is registered on a consuming tenant using its ID (`containerTypeId`). 
 This registration is required to be able to create [containers][fileStorageContainer].

Some fileStorageContainerTypeRegistration [settings][fileStorageContainerTypeRegistrationSettings]
can be made different from the defined in the [container type settings][fileStorageContainerTypeSettings] only if they're set as overridable.

[applicationPermissionGrants][fileStorageContainerTypeAppPermissionGrant] define the access 
privileges of applications on containers of a specific `containerTypeId`. It supports defining both application-only and delegated permissions.
A container type registration can have more than one [applicationPermissionGrant][fileStorageContainerTypeAppPermissionGrant] and an application can have access to more than one container type registration.
This arrangement allows container access to be shared across applications.



## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/filestorage-list-containertyperegistrations.md)|[fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) collection|Get a list of the fileStorageContainerTypeRegistration objects and their properties.|
|[Create](../api/filestorage-post-containertyperegistrations.md)|[fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md)|Create a new fileStorageContainerTypeRegistration object.|
|[Get](../api/filestoragecontainertyperegistration-get.md)|[fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md)|Read the properties and relationships of a fileStorageContainerTypeRegistration object.|
|[Update](../api/filestoragecontainertyperegistration-update.md)|[fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md)|Update the properties of a fileStorageContainerTypeRegistration object.|
|[Delete](../api/filestorage-delete-containertyperegistrations.md)|None|Delete a fileStorageContainerTypeRegistration object.|
|[List applicationPermissionGrants](../api/filestoragecontainertyperegistration-list-applicationpermissiongrants.md)|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) collection|Define the access privileges of applications on containers of a specific `containerTypeId`. It supports defining both application-only and delegated permissions. A container type registration can have more than one [applicationPermissionGrant][fileStorageContainerTypeAppPermissionGrant] and an application can have access to more than one `containerType`. This arrangement allows container access to be shared across applications.|
|[Create fileStorageContainerTypeAppPermissionGrant](../api/filestoragecontainertyperegistration-post-applicationpermissiongrants.md)|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md)|Create a new fileStorageContainerTypeAppPermissionGrant object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|billingClassification|fileStorageContainerBillingClassification|Billing type. Defaults to **standard**. The possible values are: `standard`, `trial`, `directToCustomer`.|
|billingStatus|fileStorageContainerBillingStatus|Billing status. Valid when the billing is set up or with trial fileStorageContainerTypes, which doesn't require billing. The possible values are: `invalid`, `valid`.|
|etag|String|Used in update for optimistic concurrency control. Read-only|
|expirationDateTime|DateTimeOffset|Expiration Date. Read-only.|
|id|String|fileStorageContainerTypeRegistration ID. Read-only|
|name|String|name of the fileStorageContainerTypeRegistration. Read-only.|
|owningAppId|Guid|ID of the application that owns the fileStorageContainerType. Read-only|
|registeredDateTime|DateTimeOffset|Registration Date. Read-only|
|settings|[fileStorageContainerTypeRegistrationSettings](../resources/filestoragecontainertyperegistrationsettings.md)|fileStorageContainerTypeRegistration settings|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|applicationPermissionGrants|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) collection|Access privileges of applications on containers|

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

[fileStorageContainerTypeRegistration]: filestoragecontainertyperegistration.md
[fileStorageContainerType]: filestoragecontainertype.md
[fileStorageContainer]: filestoragecontainer.md
[fileStorageContainerTypeAppPermissionGrant]: filestoragecontainertypeapppermissiongrant.md
[fileStorageContainerTypeRegistrationSettings]: filestoragecontainertyperegistrationsettings.md
[fileStorageContainerTypeSettings]: filestoragecontainertypeSettings.md
