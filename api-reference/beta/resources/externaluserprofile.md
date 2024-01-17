---
title: "externalUserProfile resource type"
description: "Represents the profile of an external or guest user in a Microsoft Entra tenant. Inherits from the externalProfile base type."
ms.localizationpriority: high
author: "jkdouglas"
ms.prod: "directory-management"
doc_type: resourcePageType
---

# externalUserProfile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an external profile in Azure Active Directory. Inherits from the [externalProfile](externalprofile.md) base type.

## Methods

| Method         | Return Type | Description |
|:---------------|:------------|:------------|
|[Get externalUserProfile](../api/externaluserprofile-get.md) | [externalUserProfile](externaluserprofile.md) | Gets the properties of an external user profile. |
|[List externalUserProfiles](../api/directory-list-externaluserprofile.md) |[externalUserProfile](externaluserprofile.md) collection| Gets a list of all external user profiles. |
|[Update externalUserProfile](../api/externaluserprofile-update.md) | None | Update an external user profile. |
|[Delete externalUserProfile](../api/directory-delete-externaluserprofiles.md) | None | Delete an external user profile. |

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|address|[physicalOfficeAddress](physicalofficeaddress.md)|The office address of the external user profile.|
|createdBy|String|The object id of the user who created the external user profile. Read-only. Not nullable. |
|createdDateTime|DateTimeOffset|Date and time when this external user was created. Not nullable. Read-only. |
|companyName|String|The company name of the external user profile. |
|deletedDateTime|DateTimeOffset|Date and time when this external user profile was deleted. Always `null` when the object hasn't been deleted. |
|department|String|The department of the external user profile. |
|displayName|String|The display name of the external user profile.|
|epoch|Int|The version number of the external user profile. Incremented with each update to the entity. Read-only. Not nullable.|
|id|String|The unique identifier for the external user profile. For example, 12345678-9abc-def0-1234-56789abcde. The value of the **id** property is often but not exclusively in the form of a GUID; treat it as an opaque identifier and do not rely on it being a GUID. Key. Not nullable. Read-only.|
|isDiscoverable|Boolean|Represents whether the external user profile is discoverable in the directory.|
|isEnabled|Boolean|Represents whether the external user profile is enabled in the directory.|
|jobTitle|String|The job title of the external user profile.|
|phoneNumber|String|The phone number of the external user profile. Must be in E164 format.|
|supervisorId|String|The object id of the supervisor of the external user profile.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalUserProfile",
  "baseType": "microsoft.graph.externalProfile",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalUserProfile",
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
  "supervisorId": "String",
  "epoch": "Integer",
  "puid": "String",
  "remoteTenantId": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "externalUserProfile resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
