---
title: "pendingExternalUserProfile resource type"
description: "Represents a pending external user profile in Azure Active Directory. Inherits from the externalProfile base type."
ms.localizationpriority: high
author: "jkdouglas"
ms.prod: "directory-management"
doc_type: resourcePageType
---

# pendingExternalUserProfile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a pending external profile in Azure Active Directory. Inherits from the [externalProfile](externalprofile.md) base type.

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
|createdBy|String|The object id of the user who created the pending external user profile. Read-only. Not nullable. |
|createdDateTime|DateTimeOffset|Date and time when this pending external user profile was created. Not nullable. Read-only. |
|companyName|String|The company name of the pending external user profile. |
|deletedDateTime|DateTimeOffset|Date and time when the pending external user profile was deleted. Always `null` when the object hasn't been deleted. |
|department|String|The department of the pending external user profile. |
|displayName|String|The display name of the pending external user profile.|
|epoch|Int|The version number of the pending external user profile. Incremented with each update to the entity. Read-only. Not nullable.|
|id|String|The unique identifier for the pending external user profile. For example, 12345678-9abc-def0-1234-56789abcde. The value of the **id** property is often but not exclusively in the form of a GUID; treat it as an opaque identifier and do not rely on it being a GUID. Key. Not nullable. Read-only.|
|isDiscoverable|Boolean|Represents whether the pending external user profile is discoverable in the directory.|
|isEnabled|Boolean|Represents whether the pending external user profile is enabled in the directory.|
|jobTitle|String|The job title of the external user profile.|
|phoneNumber|String|The phone number of the pending external user profile. Must be in E164 format.|
|supervisorId|String|The object id of the supervisor of the pending external user profile.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.pendingExternalUserProfile",
  "baseType": "microsoft.graph.externalProfile",
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
