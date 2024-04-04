---
title: "Get onPremisesDirectorySynchronization"
description: "Read the properties and relationships of an onPremisesDirectorySynchronization object."
author: "dkershaw10"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.topic: reference
---

# Get onPremisesDirectorySynchronization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onpremisesdirectorysynchronization_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/onpremisesdirectorysynchronization-get-permissions.md)]

For delegated scenarios, the user needs to be assigned the *Global Administrator* [role](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles).

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
  "name": "get_onpremisesdirectorysynchronization_e1"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/onPremisesSynchronization/{id}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-onpremisesdirectorysynchronization-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-onpremisesdirectorysynchronization-e1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-onpremisesdirectorysynchronization-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-onpremisesdirectorysynchronization-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-onpremisesdirectorysynchronization-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-onpremisesdirectorysynchronization-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-onpremisesdirectorysynchronization-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-onpremisesdirectorysynchronization-e1-python-snippets.md)]
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
    },
    "synchronizationInterval": "PT30M",
    "customerRequestedSynchronizationInterval": "PT1H",
    "anchorAttribute": "extensionAttribute4",
    "applicationId": "1651564e-7ce4-4d99-88be-0a65050d8dc3",
    "synchronizationClientVersion": "2.1.16.0",
    "currentExportData": {
      "pendingObjectsAddition": 63,
      "pendingObjectsDeletion": 18,
      "pendingObjectsUpdate": 290,
      "successfulLinksProvisioningCount": 0,
      "successfulObjectsProvisioningCount": 0,
      "clientMachineName": "ABCD-SYNC-01",
      "serviceAccount": "Synchronization-01@contoso.com",
      "totalConnectorSpaceObjects": 123456789
    },
    "writebackConfiguration": {
      "unifiedGroupContainer": "unified-group-container-value",
      "userContainer": "user-container-value"
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
