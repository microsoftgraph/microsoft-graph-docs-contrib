---
title: "Create managedTenant"
description: "Create a new managedTenant object."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# Create managedTenant
Namespace: microsoft.graph.managedTenants



Create a new managedTenant object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /tenantRelationships/managedTenants
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [managedTenant](../resources/managedtenants-managedtenant.md) object.

The following table shows the properties that are required when you create the [managedTenant](../resources/managedtenants-managedtenant.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/managedtenants-entity.md)|



## Response

If successful, this method returns a `201 Created` response code and a [managedTenant](../resources/managedtenants-managedtenant.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_managedtenant_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/tenantRelationships/managedTenants
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
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.managedTenant"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.managedTenants.managedTenant",
  "id": "80b4150f-150f-80b4-0f15-b4800f15b480"
}
```

