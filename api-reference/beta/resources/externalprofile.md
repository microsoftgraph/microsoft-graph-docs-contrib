---
title: "externalProfile resource type"
description: "Defines an external profile."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
---

# externalProfile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines an external profile. This object is the base type for [externalUserProfile](externaluserprofile.md) and [pendingExternalUserProfile](pendingexternaluserprofile.md) resource types.

Inherits from [directoryObject](../resources/directoryobject.md).

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|address|[physicalOfficeAddress](physicalofficeaddress.md)|The office address of the external user profile.|
|companyName|String|The company name of the external user profile. Supports `$filter` (`eq`, `startswith`). |
|createdBy|String|The object ID of the user who created the external user profile. Read-only. Not nullable. |
|createdDateTime|DateTimeOffset|Date and time when this external user was created. Not nullable. Read-only. |
|deletedDateTime|DateTimeOffset|Date and time when this external user profile was deleted. Always `null` when the object isn't deleted. Inherited from [directoryObject](../resources/directoryobject.md). |
|department|String|The department of the external user profile. |
|displayName|String|The display name of the external user profile.|
|id|String|The unique identifier for the external user profile. Not nullable. Read-only. Inherited from [entity](../resources/entity.md).|
|isDiscoverable|Boolean|Represents whether the external user profile is discoverable in the directory. When `true`, this external profile shows up in Teams search. |
|isEnabled|Boolean|Represents whether the external user profile is enabled in the directory. This property is peer to the `accountEnabled` property on the [user](user.md) object. |
|jobTitle|String|The job title of the external user profile.|
|phoneNumber|String|The phone number of the external user profile. Must be in E164 format.|
|supervisorId|String|The object ID of the supervisor of the external user profile. Supports `$filter` (`eq`, `startswith`).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalProfile",
  "baseType": "microsoft.graph.directoryObject",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalProfile",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "createdBy": "String",
  "companyName": "String",
  "displayName": "String",
  "jobTitle": "String",
  "isDiscoverable": "Boolean",
  "isEnabled": "Boolean",
  "department": "String",
  "phoneNumber": "String",
  "address": {
    "@odata.type": "microsoft.graph.physicalOfficeAddress"
  },
  "supervisorId": "String"
}
```
