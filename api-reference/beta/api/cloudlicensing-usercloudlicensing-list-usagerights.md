---
title: "List user usageRights"
description: "Get a list of the usageRight objects granted to a user."
author: "patrick-starrin"
ms.localizationpriority: medium
doc_type: apiPageType
---

# List user usageRight

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [usageRight](../resources/cloudlicensing-usageright.md) objects granted to a user. This API returns details about licenses that are directly assigned to a user and those licenses transitively assigned through membership in licensed groups.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudlicensing-userusageright-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-userusageright-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/cloudLicensing/usageRights
GET /users/{userId}/cloudLicensing/usageRights
```

## Optional query parameters

This method supports the `$select` and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

The following examples show how to get usage rights information for users based on specific filters:

``` http
GET /users/{userId}/cloudLicensing/usageRights?$filter=skuId eq '{skuIdValue1}'
GET /users/{userId}/cloudLicensing/usageRights?$filter=skuId in ('{skuIdValue1}', '{skuIdValue2}')
GET /users/{userId}/cloudLicensing/usageRights?$filter=services/any(c:c/planId eq 'planIdValue1')
GET /users/{userId}/cloudLicensing/usageRights?$filter=services/any(c:c/planId in ('planIdValue1', 'planIdValue2'))
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.cloudLicensing.usageRight](../resources/usageright.md) objects in the response body.

## Examples

### Example 1: Get all usage rights for a user

The following example shows how to get all usage rights granted to a user.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "cloudlicensing-userusageright-list-example-1"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{userId}/cloudLicensing/usageRights
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudLicensing.usageRight)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudLicensing.usageRight",
      "id": "1e373a1d-1f05-28cf-bfc0-ee0ecfd3db15",
      "skuId": "639dec6b-bb19-468b-871c-c5c441c4b0cb",
      "skuPartNumber": "Microsoft_365_Copilot",
      "services": [
        {
          "@odata.type": "microsoft.graph.cloudLicensing.service",
          "assignableTo": "user,group",
          "planId": "fe6c28b3-d468-44ea-bbd0-a10a5167435c",
          "planName": "COPILOT_STUDIO_IN_COPILOT_FOR_M365"
        }
      ]
    }
  ]
}
```

### Example 2: Get all usage rights for a user with a specific service plan

The following example shows how to get all usage rights granted to a user for a specific service plan.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "cloudlicensing-userusageright-list-example-2"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{userId}/cloudLicensing/usageRights?$filter=services/any(c:c/planId eq 113feb6c-3fe4-4440-bddc-54d774bf0318)
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudLicensing.usageRight)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudLicensing.usageRight",
      "id": "5bbc716a-f73f-4cc1-bf16-53d38b407b8f",
      "skuId": "75398b2a-b060-4057-9ae2-9eb00ef68579",
      "skuPartNumber": "Copilot_Pro",
      "services": [
        {
          "@odata.type": "microsoft.graph.cloudLicensing.service",
          "assignableTo": "user",
          "planId": "113feb6c-3fe4-4440-bddc-54d774bf0318",
          "planName": "EXCHANGE_S_FOUNDATION"
        }
      ]
    }
  ]
}
```

