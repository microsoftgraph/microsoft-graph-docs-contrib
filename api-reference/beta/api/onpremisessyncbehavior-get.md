---
title: "Get onPremisesSyncBehavior"
description: "Read the properties and relationships of an onPremisesSyncBehavior object."
author: "rubytek-git"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# Get onPremisesSyncBehavior

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an onPremisesSyncBehavior object. Property IsCloudManaged indicates whether the object’s source of authority is set to the cloud.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onpremisessyncbehavior-get-permissions"
}
-->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|Group-OnPremisesSyncBehavior.ReadWrite.All|Not available.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|Group-OnPremisesSyncBehavior.ReadWrite.All|Not available.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /groups/{groupsId}/onPremisesSyncBehavior
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [onPremisesSyncBehavior](../resources/onpremisessyncbehavior.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_onpremisessyncbehavior"
}
-->
``` http
GET https://graph.microsoft.com/beta/groups/{groupsId}/onPremisesSyncBehavior
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onPremisesSyncBehavior"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.onPremisesSyncBehavior",
    "id": "39b4e676-e148-6060-855c-a77f67b5ac06",
    "isCloudManaged": "Boolean"
  }
}
```

