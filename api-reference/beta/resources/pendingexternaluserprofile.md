---
title: "pendingExternalUserProfile resource type"
description: "Represents an external user profile in the Microsoft Entra tenant that is pending redemption."
ms.localizationpriority: high
author: "jkdouglas"
ms.prod: "directory-management"
doc_type: resourcePageType
---

# pendingExternalUserProfile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an external user profile in the Microsoft Entra tenant that is pending redemption.

## Methods

| Method         | Return Type | Description |
|:---------------|:------------|:------------|
|[Get pendingExternalUserProfile](../api/pendingexternaluserprofile-get.md) | [pendingExternalUserProfile](pendingexternaluserprofile.md) | Gets the properties of a pending external user profile. |
|[List pendingExternalUserProfiles](../api/directory-list-pendingexternaluserprofile.md) |[pendingExternalUserProfile](pendingexternaluserprofile.md) collection| Gets a list of all pending external user profiles. |
|[Create pendingExternalUserProfile](../api/directory-post-pendingexternaluserprofile.md) |[pendingExternalUserProfile](pendingexternaluserprofile.md)| Creates a new pending external user profile. |
|[Update pendingExternalUserProfile](../api/pendingexternaluserprofile-update.md) | None | Update a pending external user profile. |
|[Delete pendingExternalUserProfile](../api/directory-delete-pendingexternaluserprofiles.md) | None | Delete a pending external user profile. |

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|address|[physicalOfficeAddress](physicalofficeaddress.md)|The office address of the pending external user profile.|
|createdBy|String|The object ID of the user or principal who created the pending external user profile or invited the external user. Read-only. Not nullable. |
|createdDateTime|DateTimeOffset|Date and time when this pending external user profile was created. Not nullable. Read-only. |
|companyName|String|The company name of the pending external user profile. Supports the `$filter` (eq, startswith) query parameter. |
|deletedDateTime|DateTimeOffset|Date and time when the pending external user profile was deleted. Always `null` when the object isn't been deleted. |
|department|String|The department of the pending external user profile. |
|displayName|String|The display name of the pending external user profile.|
|epoch|Int|The version number of the pending external user profile. Incremented with each update to the entity. Read-only. Not nullable.|
|id|String|The unique identifier for the pending external user profile. For example, 12345678-9abc-def0-1234-56789abcde. Not nullable. Read-only.|
|isDiscoverable|Boolean|Represents whether the pending external user profile is discoverable in the directory. When `true`, this external profile shows up in Teams search. When `false`, this external profile doesn't show up in Teams search.|
|isEnabled|Boolean|Represents whether the pending external user profile is enabled in the directory.|
|jobTitle|String|The job title of the external user profile.|
|phoneNumber|String|The phone number of the pending external user profile. Must be in E.164 format.|
|supervisorId|String|The object ID of the supervisor of the pending external user profile. Supports the `$filter` (eq, startswith) query parameter.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.pendingExternalUserProfile",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.pendingExternalUserProfile",
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
  "epoch": "Integer"
}
```
