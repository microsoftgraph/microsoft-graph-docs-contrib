---
title: "Get onPremisesDirectorySynchronization"
description: "Read the properties and relationships of an onPremisesDirectorySynchronization object."
author: "dkershaw10"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Get onPremisesDirectorySynchronization

Namespace: microsoft.graph

Read the properties and relationships of an [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                           |
| :------------------------------------- | :------------------------------------------------------------------------------------ |
| Delegated (work or school account)     | OnPremDirectorySynchronization.Read.All, OnPremDirectorySynchronization.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                                                        |
| Application                            | Not supported.                                                                        |

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
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) object in the response body.

## Examples

### Request

The following is an example of a request.

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

---

### Response

The following is an example of the response
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
