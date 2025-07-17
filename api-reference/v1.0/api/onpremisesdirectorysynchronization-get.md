---
title: "Get onPremisesDirectorySynchronization"
description: "Read the properties and relationships of an onPremisesDirectorySynchronization object."
author: dhanyahk
ms.reviewer: sgupta, abhishek.badjatya, dhanyahk
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.date: 10/30/2024
ms.custom: sfi-ga-blocked
---

# Get onPremisesDirectorySynchronization

Namespace: microsoft.graph

Read the properties and relationships of an [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onpremisesdirectorysynchronization_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/onpremisesdirectorysynchronization-get-permissions.md)]

> [!IMPORTANT]
> In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. *Global Administrator* is the only role supported for this operation.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/onPremisesSynchronization
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_onpremisesdirectorysynchronization"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/onPremisesSynchronization/{id}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-onpremisesdirectorysynchronization-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-onpremisesdirectorysynchronization-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-onpremisesdirectorysynchronization-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-onpremisesdirectorysynchronization-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-onpremisesdirectorysynchronization-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-onpremisesdirectorysynchronization-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-onpremisesdirectorysynchronization-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-onpremisesdirectorysynchronization-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onPremisesDirectorySynchronization"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/onPremisesSynchronization/$entity",
  "id": "12cce4b4-4ab8-40b7-be4d-f5d7742ec185",
  "configuration": {
    "accidentalDeletionPrevention": {
      "synchronizationPreventionType": "enabledForCount",
      "alertThreshold": 500
    }
  },
  "features": {
    "passwordSyncEnabled": false,
    "passwordWritebackEnabled": false,
    "directoryExtensionsEnabled": false,
    "quarantineUponUpnConflictEnabled": true,
    "quarantineUponProxyAddressesConflictEnabled": true,
    "softMatchOnUpnEnabled": true,
    "cloudPasswordPolicyForPasswordSyncedUsersEnabled": false,
    "fopeConflictResolutionEnabled": false,
    "unifiedGroupWritebackEnabled": false,
    "userWritebackEnabled": false,
    "deviceWritebackEnabled": false,
    "synchronizeUpnForManagedUsersEnabled": true,
    "userForcePasswordChangeOnLogonEnabled": false,
    "concurrentOrgIdProvisioningEnabled": false,
    "concurrentCredentialUpdateEnabled": false,
    "groupWriteBackEnabled": false,
    "blockSoftMatchEnabled": false,
    "blockCloudObjectTakeoverThroughHardMatchEnabled": false,
    "bypassDirSyncOverridesEnabled": false
  }
}
```
