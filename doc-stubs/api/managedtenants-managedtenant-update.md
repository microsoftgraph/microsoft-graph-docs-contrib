---
title: "Update managedTenant"
description: "Update the properties of a managedTenant object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update managedTenant
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [managedTenant](../resources/managedtenants-managedtenant.md) object.

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
PATCH /tenantRelationships/managedTenants
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [managedTenant](../resources/managedtenants-managedtenant.md) object.

The following table shows the properties that are required when you update the [managedTenant](../resources/managedtenants-managedtenant.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/managedtenants-entity.md)|



## Response

If successful, this method returns a `200 OK` response code and an updated [managedTenant](../resources/managedtenants-managedtenant.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_managedtenant"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/tenantRelationships/managedTenants
Content-Type: application/json
Content-length: 70

{
  "@odata.type": "#microsoft.graph.managedTenants.managedTenant"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.managedTenants.managedTenant",
  "id": "1d33de53-de53-1d33-53de-331d53de331d"
}
```

