---
title: "Delete outboundProvisioningFlowSet"
description: "Delete an outboundProvisioningFlowSet object."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
---

# Delete outboundProvisioningFlowSet

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an [outboundProvisioningFlowSet](../resources/industrydata-outboundprovisioningflowset.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-industrydataroot-delete-outboundprovisioningflowsets-permissions"
}
-->

[!INCLUDE [permissions-table](../includes/permissions/industrydata-industrydataroot-delete-outboundprovisioningflowsets-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
DELETE /external/industryData/outboundProvisioningFlowSets/{id}
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_outboundprovisioningflowset"
}
-->

```http
DELETE https://graph.microsoft.com/beta/external/industryData/OutboundProvisioningFlowSets/8ac3c08f-6f93-465b-4bd9-08dc4ac773d0
```

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
