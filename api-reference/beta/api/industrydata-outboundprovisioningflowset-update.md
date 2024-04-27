---
title: "Update outboundProvisioningFlowSet"
description: "Update the properties of an outboundProvisioningFlowSet object."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
---

# Update outboundProvisioningFlowSet

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-outboundprovisioningflowset-update-permissions"
}
-->

[!INCLUDE [permissions-table](../includes/permissions/industrydata-outboundprovisioningflowset-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
PATCH /external/industryData/outboundProvisioningFlowSets/{id}
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property    | Type                                                                       | Description                                                                                           |
| :---------- | :------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------- |
| displayName | String                                                                     | The display name of the flowSet provided by the caller. Required.                                     |
| filter      | [microsoft.graph.industryData.filter](../resources/industrydata-filter.md) | The collection of provisioning filters applicable to all the flows under the given flowSet. Optional. |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_outboundprovisioningflowset"
}
-->

```http
PATCH https://graph.microsoft.com/beta/external/industryData/OutboundProvisioningFlowSets/8ac3c08f-6f93-465b-4bd9-08dc4ac773d0
Content-Type: application/json

{
   "@odata.type": "#microsoft.graph.industryData.outboundProvisioningFlowSet",
   "displayName": "Outbound provisioning flow Updated"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-outboundprovisioningflowset-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-outboundprovisioningflowset-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-outboundprovisioningflowset-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-outboundprovisioningflowset-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-outboundprovisioningflowset-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-outboundprovisioningflowset-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-outboundprovisioningflowset-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```
