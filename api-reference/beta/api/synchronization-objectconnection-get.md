---
title: "Get objectConnection"
description: "Get the cached linkage record for a known object in a synchronization job."
author: "madipanz"
ms.date: 10/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Get objectConnection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [objectConnection](../resources/synchronization-objectconnection.md) cached linkage record for a known object in a [synchronizationJob](../resources/synchronization-synchronizationjob.md).

During public preview, you must specify a known **objectId**. Collection listing isn't supported; a GET request to the **objectConnections** collection returns `400 Bad Request`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "synchronization_objectconnection_get_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/synchronization-objectconnection-get-permissions.md)]

The `SynchronizationMetadata.ReadWrite.All` permission also supports this operation for delegated work or school accounts and applications. The `SynchronizationMetadata.ReadWrite.OwnedBy` application permission also supports this operation.

The `SynchronizationMetadata.Read.OwnedBy` and `SynchronizationMetadata.ReadWrite.OwnedBy` application permissions restrict access to synchronization jobs associated with service principals owned by the calling application.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /servicePrincipals/{servicePrincipal-id}/synchronization/jobs/{synchronizationJob-id}/objectConnections/{objectId}
```

Replace `{objectId}` with the exact source or target identifier for the object in this synchronization job. For example, use the Microsoft Entra object ID for the Microsoft Entra side of a connection, or the Workday worker's WID for the Workday source. The service searches for a source identifier first, then a target identifier. Preserve the identifier's original format.

## Optional query parameters

This method supports only the `$select` OData query parameter to customize the response. Other OData query parameters aren't supported. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [objectConnection](../resources/synchronization-objectconnection.md) object in the response body.

### Errors

|HTTP status|Condition|
|:---|:---|
|`401 Unauthorized`|The caller is unauthenticated, lacks the delegated scope, or fails delegated authorization checks.|
|`403 Forbidden`|The required application permission is missing, or the caller can't access the requested synchronization job.|
|`404 Not Found`|The synchronization job or object connection doesn't exist.|
|`429 Too Many Requests`|The request is throttled.|

## Examples

### Request

The following example uses the source user's Microsoft Entra object ID as `{objectId}`.

<!-- {
  "blockType": "request",
  "name": "get_objectconnection"
}
-->
```http
GET https://graph.microsoft.com/beta/servicePrincipals/{servicePrincipal-id}/synchronization/jobs/{synchronizationJob-id}/objectConnections/9d47c4a5-0d5a-4c0e-91b6-6f6c9c6e4c77
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "name": "get_objectconnection",
  "@odata.type": "microsoft.graph.objectConnection"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "objectId": "9d47c4a5-0d5a-4c0e-91b6-6f6c9c6e4c77",
  "sourceAnchor": "9d47c4a5-0d5a-4c0e-91b6-6f6c9c6e4c77",
  "targetAnchor": "EXTERNAL_userA",
  "displayName": "User A",
  "objectTypeName": "User"
}
```

## Related content

- [Manage provisioning object connections using Microsoft Graph](/entra/identity/app-provisioning/manage-object-connections)
