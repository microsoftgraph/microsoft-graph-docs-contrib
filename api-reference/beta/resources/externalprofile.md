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

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalProfile",
  "openType": true
}-->

```json
{
  "id": "string (identifier)",
  "address": "microsoft.graph.physicalOfficeAddress",
  "createdBy": "string",
  "createdDateTime": "dateTimeOffset",
  "companyName": "string",
  "deletedDateTime": "dateTimeOffset",
  "department": "string",
  "displayName": "string",
  "isDiscoverable": "boolean",
  "isEnabled": "boolean",
  "jobTitle": "string",
  "phoneNumber": "string",
  "supervisorId": "string"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "externalProfile resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
