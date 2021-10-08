---
title: "Create defaultUserRoleOverride"
description: "Create a new defaultUserRoleOverride object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create defaultUserRoleOverride
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [defaultUserRoleOverride](../resources/defaultuserroleoverride.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /authorizationPolicy/defaultUserRoleOverrides
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [defaultUserRoleOverride](../resources/defaultuserroleoverride.md) object.

The following table shows the properties that are required when you create the [defaultUserRoleOverride](../resources/defaultuserroleoverride.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|isDefault|Boolean|**TODO: Add Description**|
|rolePermissions|[Microsoft.DirectoryServices.unifiedRolePermission](../resources/unifiedrolepermission.md) collection|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [defaultUserRoleOverride](../resources/defaultuserroleoverride.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_defaultuserroleoverride_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/authorizationPolicy/defaultUserRoleOverrides
Content-Type: application/json
Content-length: 210

{
  "@odata.type": "#Microsoft.DirectoryServices.defaultUserRoleOverride",
  "isDefault": "Boolean",
  "rolePermissions": [
    {
      "@odata.type": "microsoft.graph.unifiedRolePermission"
    }
  ]
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.defaultUserRoleOverride"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.defaultUserRoleOverride",
  "id": "ac29f009-f009-ac29-09f0-29ac09f029ac",
  "isDefault": "Boolean",
  "rolePermissions": [
    {
      "@odata.type": "microsoft.graph.unifiedRolePermission"
    }
  ]
}
```

