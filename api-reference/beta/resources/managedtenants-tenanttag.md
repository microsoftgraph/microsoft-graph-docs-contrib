---
title: "tenantTag resource type"
description: "Represents a tag that can be assigned to managed tenant."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# tenantTag resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a tag that can be assigned to managed tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tenant tags](../api/managedtenants-managedtenant-list-tenanttags.md)|[microsoft.graph.managedTenants.tenantTag](../resources/managedtenants-tenanttag.md) collection|Get a list of the [tenantTag](../resources/managedtenants-tenanttag.md) objects and their properties.|
|[Create tenant tag](../api/managedtenants-managedtenant-post-tenanttags.md)|[microsoft.graph.managedTenants.tenantTag](../resources/managedtenants-tenanttag.md)|Create a new [tenantTag](../resources/managedtenants-tenanttag.md) object.|
|[Get tenant tag](../api/managedtenants-tenanttag-get.md)|[microsoft.graph.managedTenants.tenantTag](../resources/managedtenants-tenanttag.md)|Read the properties and relationships of a [tenantTag](../resources/managedtenants-tenanttag.md) object.|
|[Update tenant tag](../api/managedtenants-tenanttag-update.md)|[microsoft.graph.managedTenants.tenantTag](../resources/managedtenants-tenanttag.md)|Update the properties of a [tenantTag](../resources/managedtenants-tenanttag.md) object.|
|[Delete tenant tag](../api/managedtenants-tenanttag-delete.md)|None|Deletes a [tenantTag](../resources/managedtenants-tenanttag.md) object.|
|[Assign tenant tag](../api/managedtenants-tenanttag-assigntag.md)|[microsoft.graph.managedTenants.tenantTag](../resources/managedtenants-tenanttag.md)|Assigns the tenant tag to the specified managed tenants.|
|[Unassign tenant tag](../api/managedtenants-tenanttag-unassigntag.md)|[microsoft.graph.managedTenants.tenantTag](../resources/managedtenants-tenanttag.md)|Un-assigns the tenant tag from the specified managed tenants.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdByUserId|String|The identifier for the account that created the tenant tag. Required. Read-only.|
|createdDateTime|DateTimeOffset|The date and time when the tenant tag was created. Required. Read-only.|
|deletedDateTime|DateTimeOffset|The date and time when the tenant tag was deleted. Required. Read-only.|
|description|String|The description for the tenant tag. Optional. Read-only.|
|displayName|String|The display name for the tenant tag. Required. Read-only.|
|id|String|The unique identifier for the tenant tag. Required. Read-only.|
|lastActionByUserId|String|The identifier for the account that lasted on the tenant tag. Optional. Read-only.|
|lastActionDateTime|DateTimeOffset|The date and time the last action was performed against the tenant tag. Optional. Read-only.|
|tenants|[microsoft.graph.managedTenants.tenantInfo](../resources/managedtenants-tenantinfo.md) collection|The collection of managed tenants associated with the tenant tag. Optional.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.tenantTag",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.tenantTag",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdByUserId": "String",
  "lastActionByUserId": "String",
  "tenants": [
    {
      "@odata.type": "microsoft.graph.managedTenants.tenantInfo"
    }
  ],
  "lastActionDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "deletedDateTime": "String (timestamp)"
}
```
