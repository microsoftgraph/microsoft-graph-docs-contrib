---
title: "sharePointMigrationsRoot resource type"
description: "Represents the root container for cross-organization (tenant-to-tenant) SharePoint migration operations."
author: "hongyangwan"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
toc.title: SharePoint migrations root
---

# sharePointMigrationsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the root container for cross-organization (tenant-to-tenant) SharePoint migration operations. This resource provides access to user and group identity mappings used during migration processes.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get SharePoint group identity mapping](../api/sharepointgroupidentitymapping-get.md)|[sharePointGroupIdentityMapping](../resources/sharepointgroupidentitymapping.md)|Retrieves a specific cross-organization group identity mapping based on the source group's Azure AD object ID.|
|[Update SharePoint group identity mapping](../api/sharepointgroupidentitymapping-update.md)|[sharePointGroupIdentityMapping](../resources/sharepointgroupidentitymapping.md) collection|Performs delta patch operations on group identity mappings for cross-organization migration.|
|[Get SharePoint user identity mapping](../api/sharepointuseridentitymapping-get.md)|[sharePointUserIdentityMapping](../resources/sharepointuseridentitymapping.md)|Retrieves a specific user identity mapping by source user principal name (UPN).|
|[Update SharePoint user identity mapping](../api/sharepointuseridentitymapping-update.md)|[sharePointUserIdentityMapping](../resources/sharepointuseridentitymapping.md) collection|Performs delta patch operations on user identity mappings for cross-organization migration.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **sharePointMigrationsRoot** resource. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|crossOrganizationGroupMappings|[sharePointGroupIdentityMapping](../resources/sharepointgroupidentitymapping.md) collection|Collection of group identity mappings for cross-organization migration.|
|crossOrganizationUserMappings|[sharePointUserIdentityMapping](../resources/sharepointuseridentitymapping.md) collection|Collection of user identity mappings for cross-organization migration.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointMigrationsRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationsRoot",
  "id": "String (identifier)"
}
```

