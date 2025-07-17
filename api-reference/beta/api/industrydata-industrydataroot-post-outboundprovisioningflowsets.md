---
title: "Create outboundProvisioningFlowSet"
description: "Create a new outboundProvisioningFlowSet object."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
ms.date: 10/11/2024
---

# Create outboundProvisioningFlowSet

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "industrydata_industrydataroot_post_outboundprovisioningflowsets" } -->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-industrydataroot-post-outboundprovisioningflowsets-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /external/industryData/OutboundProvisioningFlowSets
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object.

## Response

If successful, this method returns a `201 Created` response code and an [outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_outboundprovisioningflowset_from_"
}
-->

```http
POST https://graph.microsoft.com/beta/external/industryData/OutboundProvisioningFlowSets
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.industryData.outboundProvisioningFlowSet",
    "displayName": "Outbound Provisioning Flow Test",
    "filter": {
        "@odata.type": "#microsoft.graph.industryData.basicFilter",
        "attribute": "orgExternalId",
        "in": [
            "Quarter",
            "Demo"
        ]
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-outboundprovisioningflowset-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-outboundprovisioningflowset-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-outboundprovisioningflowset-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-outboundprovisioningflowset-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-outboundprovisioningflowset-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-outboundprovisioningflowset-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-outboundprovisioningflowset-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-outboundprovisioningflowset-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.outboundProvisioningFlowSet"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/outboundProvisioningFlowSets/$entity",
    "id": "8ac3c08f-6f93-465b-4bd9-08dc4ac773d0",
    "createdDateTime": "2024-03-25T21:55:03.495336Z",
    "lastModifiedDateTime": "2024-03-25T21:55:03.495336Z",
    "displayName": "Outbound Provisioning Flow Test",
    "filter": {
        "@odata.type": "#microsoft.graph.industryData.basicFilter",
        "attribute": "orgExternalId",
        "in": [
            "Quarter",
            "Demo"
        ]
    }
}
```
