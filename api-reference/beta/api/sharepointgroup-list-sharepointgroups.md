---
title: "sharePointGroup: list"
description: "List sharePointGroup objects."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# sharePointGroup: list  

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List [sharePointGroup](../resources/sharepointgroup.md) objects.

A collection of **sharePointGroup** objects that are local to the SharePointEmbedded container or SharePoint site is returned.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

This API only supports application only permissions.

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Application                            | FileStorageContainer.Selected               |

> [!Note]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `EnumeratePermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#Authorization).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containers/{containerId}/sharePointGroups
```

## Request headers

|Name|Description|
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type   | application/json. Required. |

## Request body
No request body is supplied for this API.

## Response

If successful, this action returns a `200 OK` response code with a json representation of the collection of retrieved group.

## Example 1: Retrieve all the existing SharePointGroups that are local to a container
The following example retrieves all the SharePointGroups that are local to the SharePointEmbedded container identified by `{containerId}`


### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_sharepointgroup1"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups
Content-Type: application/json

```

---

### Response

The following example shows a sample response containing the collection of SharePointGroups that exist.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
{
  "@odata.context": "https://contoso.sharepoint.com/_api/v2.1/$metadata#storageContainers(b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z)/sharePointGroups",
  "value": [
    {
      "id": "7",
      "title": "sampleTitle1",
      "description": "sampleDescription1"
    },
    {
      "id": "9",
      "title": "sampleTitle2",
      "description": "sampleDescription2"
    }
  ]
}
```

## Example 2: Attempt to retrieve all the existing SharePointGroups that are local to a container. The container has no SharePointGroups
The following example attempts to retrieve all the SharePointGroups that are local to the SharePointEmbedded container identified by `{containerId}`. This container is new and has no SharePointGroups in it.


### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_sharepointgroup2"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups
Content-Type: application/json

```

---

### Response

The following example shows a sample response. As there are no SharePointGroups in the container, the response has an empty list.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
{
  "@odata.context": "https://contoso.sharepoint.com/_api/v2.1/$metadata#storageContainers(b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z)/sharePointGroups",
  "value": []
}
```