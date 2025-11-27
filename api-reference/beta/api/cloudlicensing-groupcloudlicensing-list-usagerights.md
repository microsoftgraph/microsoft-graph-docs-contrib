---
title: "List usageRights for group"
description: "Get a list of the usageRight objects granted to a group."
author: "patrick-starrin"
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: apiPageType
ms.date: 10/22/2024
---

# List usageRights for group

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [usageRight](../resources/cloudlicensing-usageright.md) objects granted to a group.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudlicensing_groupcloudlicensing_list_usagerights" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-groupcloudlicensing-list-usagerights-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /groups/{groupId}/cloudLicensing/usageRights
```

## Optional query parameters

This method supports the `$select` and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

The following examples show how to get usage rights information for groups based on specific filters:

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /groups/0003985b-dfc1-4f42-97d4-65f70a335ca8/cloudLicensing/usageRights?$filter=skuId eq 639dec6b-bb19-468b-871c-c5c441c4b0cb
GET /groups/0003985b-dfc1-4f42-97d4-65f70a335ca8/cloudLicensing/usageRights?$filter=skuId in (639dec6b-bb19-468b-871c-c5c441c4b0cb, a403ebcc-fae0-4ca2-8c8c-7a907fd6c235)
GET /groups/0003985b-dfc1-4f42-97d4-65f70a335ca8/cloudLicensing/usageRights?$filter=services/any(c:c/planId eq 113feb6c-3fe4-4440-bddc-54d774bf0318)
GET /groups/0003985b-dfc1-4f42-97d4-65f70a335ca8/cloudLicensing/usageRights?$filter=services/any(c:c/planId in (113feb6c-3fe4-4440-bddc-54d774bf0318, 2049e525-b859-401b-b2a0-e0a31c4b1fe4))
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md) objects in the response body.

## Examples

### Example 1: Get all usage rights for a group

The following example shows how to get all usage rights granted to a group.

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudlicensing-groupusageright-list-example-1"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/groups/0003985b-dfc1-4f42-97d4-65f70a335ca8/cloudLicensing/usageRights
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudlicensing-groupusageright-list-example-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudLicensing.usageRight)"
}
-->
```http
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

### Example 2: Get all usage rights for a group with a specific service plan

The following example shows how to get all usage rights granted to a group for a specific service plan.

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudlicensing-groupusageright-list-example-2"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/groups/0003985b-dfc1-4f42-97d4-65f70a335ca8/cloudLicensing/usageRights?$filter=services/any(c:c/planId eq 113feb6c-3fe4-4440-bddc-54d774bf0318)
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudlicensing-groupusageright-list-example-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudLicensing.usageRight)"
}
-->
```http
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
          "assignableTo": "group",
          "planId": "113feb6c-3fe4-4440-bddc-54d774bf0318",
          "planName": "EXCHANGE_S_FOUNDATION"
        }
      ]
    }
  ]
}
```
