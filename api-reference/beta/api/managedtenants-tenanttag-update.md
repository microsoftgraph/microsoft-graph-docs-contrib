---
title: "Update tenantTag"
description: "Update the properties of a tenantTag object."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# Update tenantTag
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [tenantTag](../resources/managedtenants-tenanttag.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ManagedTenants.WriteRead.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /tenantRelationships/managedTenants/tenantTags/{tenantTagId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [tenantTag](../resources/managedtenants-tenanttag.md) object.

The following table shows the properties that are required when you update the [tenantTag](../resources/managedtenants-tenanttag.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the tenant tag.|
|displayName|String|The display name for the tenant tag.|
|description|String|The description for the tenant tag.|
|tenants|[microsoft.graph.managedTenants.tenantInfo](../resources/managedtenants-tenantinfo.md) collection|The collection of managed tenants associated with the tenant tag.|

## Response

If successful, this method returns a `200 OK` response code and an updated [tenantTag](../resources/managedtenants-tenanttag.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_tenanttag"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/tenantRelationships/managedTenants/tenantTags/{tenantTagId}
Content-Type: application/json
Content-length: 382

{
  "@odata.type": "#microsoft.graph.managedTenants.tenantTag",
  "displayName": "String",
  "description": "String",
  "tenants": [
    {
      "@odata.type": "microsoft.graph.managedTenants.tenantInfo"
    }
  ]
}
```

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.tenantTag"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.managedTenants.tenantTag",
  "id": "479ae6ac-e6ac-479a-ace6-9a47ace69a47",
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
