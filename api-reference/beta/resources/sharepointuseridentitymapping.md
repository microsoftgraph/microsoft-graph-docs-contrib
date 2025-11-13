---
title: "sharePointUserIdentityMapping resource type"
description: "Represents a cross-organization identity mapping for a user during a tenant-to-tenant (cross-tenant) migration."
author: "hongyangwan"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
toc.title: SharePoint user identity mapping
---

# sharePointUserIdentityMapping resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a cross-organization identity mapping for a user during a tenant-to-tenant (cross-tenant) migration. This resource defines the relationship between a source user in the originating organization and its corresponding target user in the destination organization. It includes source and target user identities, migration metadata, and user type information.

Inherits from [sharePointIdentityMapping](../resources/sharepointidentitymapping.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/sharepointuseridentitymapping-get.md)|[sharePointUserIdentityMapping](../resources/sharepointuseridentitymapping.md)|Read the properties and relationships of [sharePointUserIdentityMapping](../resources/sharepointuseridentitymapping.md) object.|
|[Update](../api/sharepointuseridentitymapping-update.md)|[sharePointUserIdentityMapping](../resources/sharepointuseridentitymapping.md)|Update the properties of a [sharePointUserIdentityMapping](../resources/sharepointuseridentitymapping.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the user identity mapping. Base64-encoded String. Generated automatically. Inherited from [sharePointIdentityMapping](../resources/sharepointidentitymapping.md).|
|sourceOrganizationId|Guid|The unique identifier of the source organization in the migration. Inherited from [sharePointIdentityMapping](../resources/sharepointidentitymapping.md).|
|sourceUserIdentity|[userIdentity](../resources/useridentity.md)|The identity information of the source user in the originating organization. Contains the source user's principal name.|
|sourceUserPrincipalName|String|The user principal name (UPN) of the source user. Used as an alternate key for querying. Internal only.|
|targetUserIdentity|[userIdentity](../resources/useridentity.md)|The identity information of the target user in the destination organization. Contains the target user's principal name.|
|targetUserMigrationData|[sharePointIdentityMappingUserMigrationData](../resources/sharepointidentitymappingusermigrationdata.md)|Additional migration-specific data for the target user. Contains the email address for the user in the destination organization.|
|userType|sharePointIdentityMappingUserType|Indicates the type of user. The possible values are: `none`, `regularUser`, `adminUser`, `guestUser`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointUserIdentityMapping",
  "baseType": "microsoft.graph.sharePointIdentityMapping",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointUserIdentityMapping",
  "id": "String (identifier)",
  "sourceOrganizationId": "Guid",
  "sourceUserIdentity": {"@odata.type": "microsoft.graph.userIdentity"},
  "sourceUserPrincipalName": "String",
  "targetUserIdentity": {"@odata.type": "microsoft.graph.userIdentity"},
  "targetUserMigrationData": {"@odata.type": "microsoft.graph.sharePointIdentityMappingUserMigrationData"},
  "userType": "String"
}
```

