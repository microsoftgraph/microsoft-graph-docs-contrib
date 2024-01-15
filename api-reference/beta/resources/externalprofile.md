---
title: "externalProfile resource type"
description: "Represents an external profile in Azure Active Directory. Inherits from the directoryObject base type."
ms.localizationpriority: high
author: "jkdouglas"
ms.prod: "directory-management"
doc_type: resourcePageType
---

# externalProfile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an external profile in Azure Active Directory. Inherits from the [directoryObject](directoryobject.md) base type.

The **externalProfile** type is the base type for the following resources:

+ [externalUserProfile](externaluserprofile.md)
+ [pendingExternalUserProfile](pendingexternaluserprofile.md)

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|address|[physicalOfficeAddress](physicalofficeaddress.md)|The office address of the external profile.|
|createdBy|String|The object id of the user who created the external profile. Read-only. Not nullable. |
|createdDateTime|DateTimeOffset|Date and time when this object was created. Not nullable. Read-only. |
|companyName|String|The company name of the external profile. |
|deletedDateTime|DateTimeOffset|Date and time when this object was deleted. Always `null` when the object hasn't been deleted. |
|department|String|The department of the external profile. |
|displayName|String|The display name of the external profile.
|id|String|The unique identifier for the object. For example, 12345678-9abc-def0-1234-56789abcde. The value of the **id** property is often but not exclusively in the form of a GUID; treat it as an opaque identifier and do not rely on it being a GUID. Key. Not nullable. Read-only.|
|isDiscoverable|Boolean|Represents whether the external profile is discoverable in the directory.|
|isEnabled|Boolean|Represents whether the external profile is enabled in the directory.|
|jobTitle|String|The job title of the external profile.|
|phoneNumber|String|The phone number of the external profile. Must be in E164 format.|
|supervisorId|String|The object id of the supervisor of the external profile.|

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