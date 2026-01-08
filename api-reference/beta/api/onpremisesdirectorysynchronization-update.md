---
title: "Update onPremisesDirectorySynchronization"
description: "Update the properties of an onPremisesDirectorySynchronization object."
author: dhanyahk
ms.reviewer: damaiya,vifernan,awsdev
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.date: 10/31/2024
ms.custom: sfi-ga-blocked
---

# Update onPremisesDirectorySynchronization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onpremisesdirectorysynchronization_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/onpremisesdirectorysynchronization-update-permissions.md)]

> [!IMPORTANT]
> In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. *Global Administrator* is the only role supported for this operation.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /directory/onPremisesSynchronization/{id}
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property      | Type                                                                                                                                           | Description                                                                                                                                |
| :------------ | :--------------------------------------------------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------- |
| configuration | [onPremisesDirectorySynchronizationConfiguration](../resources/onpremisesdirectorysynchronizationconfiguration.md) | Consists of configurations that can be fine-tuned and impact the on-premises directory synchronization process for a tenant. |
| features      | [onPremisesDirectorySynchronizationFeature](../resources/onpremisesdirectorysynchronizationfeature.md)             | Consists of directory synchronization features that can be enabled or disabled.                                          |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_onpremisesdirectorysynchronization_e1"
}
-->
```http
PATCH https://graph.microsoft.com/beta/directory/onPremisesSynchronization/{id}
Content-Type: application/json
Content-length: 293

{
  "configuration": {
    "accidentalDeletionPrevention": {
      "synchronizationPreventionType": "enabledForCount",
      "alertThreshold": 500
    },
    "synchronizationInterval": "PT30M",
    "customerRequestedSynchronizationInterval": "PT1H"
  },
  "features": {
    "groupWriteBackEnabled": true
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-onpremisesdirectorysynchronization-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-onpremisesdirectorysynchronization-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-onpremisesdirectorysynchronization-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-onpremisesdirectorysynchronization-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-onpremisesdirectorysynchronization-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-onpremisesdirectorysynchronization-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-onpremisesdirectorysynchronization-e1-python-snippets.md)]
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
