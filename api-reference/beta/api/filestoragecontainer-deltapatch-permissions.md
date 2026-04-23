---
title: "Create permissions in bulk"
description: "Add multiple permissions to an existing fileStorageContainer using delta patch."
author: "rkoppolu"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 04/22/2026
---

# Create permissions in bulk

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add up to 10 [permission](../resources/permission.md) objects to an existing [fileStorageContainer](../resources/filestoragecontainer.md) in a single request using delta patch.

> [!NOTE]
> Currently, we only support bulk **creating** permissions. Bulk updating and deleting permissions will be supported in the future.
> [!IMPORTANT]
> Permissions added to a [fileStorageContainer](../resources/filestoragecontainer.md) apply to all its [driveItem](../resources/driveitem.md) objects, regardless of any unique or restrictive permissions applied to those items.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_deltapatch_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-deltapatch-permissions-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```HTTP
PATCH /storage/fileStorage/containers/{containerId}/permissions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON object with the following properties.

|Name|Type|Description|
|:---|:---|:---|
|@context|String|Must be set to `#$delta` to signal a delta patch operation. Required.|
|value|[permission](../resources/permission.md) collection|A collection of up to 10 permission objects to create. Required.|

Each [permission](../resources/permission.md) object in the **value** collection supports the following properties.

|Name|Type|Description|
|:---|:---|:---|
|roles|Collection(String)|The type of permission to grant. The possible values are: `reader`, `writer`, `manager`, `owner`.|
|grantedToV2|[sharePointIdentitySet](../resources/sharepointidentityset.md)|For user type permissions, the details of the user for this permission.|

## Response

If successful, this method returns a `200 OK` response code and a collection of [permission](../resources/permission.md) objects in the response body. Successfully created permissions include the permission object. Failed items include a `@Core.DataModificationException` annotation with error details.

## Examples

### Request

The following example shows how to add three permissions to a container in a single request.

<!-- {
  "blockType": "request",
  "name": "create_permissions_bulk"
}
-->
```http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/permissions
Content-Type: application/json

{
  "@context": "#$delta",
  "value": [
    {
      "roles": ["reader"],
      "grantedToV2": {
        "user": {
          "userPrincipalName": "jacob@contoso.com"
        }
      }
    },
    {
      "roles": ["manager"],
      "grantedToV2": {
        "user": {
          "userPrincipalName": "alex@contoso.com"
        }
      }
    },
    {
      "roles": ["writer"],
      "grantedToV2": {
        "user": {
          "userPrincipalName": "kate@contoso.com"
        }
      }
    }
  ]
}
```

### Response

The following example shows the response. The first two permissions were created successfully. The third failed because the user wasn't found, as indicated by the `@Core.DataModificationException` annotation.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.permission)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#storage/fileStorage/containers('b%21ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z')/permissions/$delta",
  "value": [
    {
      "id": "X2k6MCMuZnxtZW1iZXJzaGlwfGpha2VzbWl0aEBjb250b3NvLm9ubWljcm9zb2Z0LmNvbQ",
      "roles": [
        "reader"
      ],
      "grantedToV2": {
        "user": {
          "displayName": "Jacob Hancock",
          "id": "12cf37a9-fd2d-463f-a9c4-5a5acfef22df",
          "userPrincipalName": "jacob@contoso.com"
        }
      }
    },
    {
      "id": "X2k6MCMuZnxtZW1iZXJzaGlwfGpvaG5kb2VAY29udG9zby5vbm1pY3Jvc29mdC5jb20",
      "roles": [
        "manager"
      ],
      "grantedToV2": {
        "user": {
          "displayName": "Alex Johnson",
          "id": "97fb19fc-f342-48ab-b945-85eb8b81a732",
          "userPrincipalName": "alex@contoso.com"
        }
      }
    },
    {
      "@Core.DataModificationException": {
        "@odata.type": "#Org.OData.Core.V1.DataModificationExceptionType",
        "failedOperation": "Create",
        "responseCode": 400,
        "info": {
          "code": "BadRequest",
          "message": "The specified user kate@contoso.com could not be found."
        }
      },
      "id": "00000000-0000-0000-0000-000000000000",
      "roles": [
        "writer"
      ],
      "grantedToV2": {
        "user": {
          "userPrincipalName": "kate@contoso.com"
        }
      }
    }
  ]
}
```

## Error response codes

|HTTP code|Description|
|:---|:---|
|400|Bad request.|
|401|Request lacks valid authentication credentials.|
|403|Provided authentication credentials are valid but insufficient to perform requested operation. Examples: the calling app does not have permissions to manage permissions for containers of this type; the calling user has no permissions on this container instance or their role does not allow container permission management.|
|404|Container doesn't exist.|
|409|Resource modified. Returned per-item when attempting to add an identity that already has a different role on the container.|
|423|Container is locked. For example, the container is archived.|
