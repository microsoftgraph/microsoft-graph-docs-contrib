---
title: "virtualEndpoint: retrieveScopedPermissions"
description: "Retrieve the authenticated user's effective scoped permissions and scope ids."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# virtualEndpoint: retrieveScopedPermissions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the authenticated user's effective scoped permissions and scope ids, helping UX hide or disable content that the current user doesn't have access to.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account) | Not supported.|
|Application| Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/retrieveScopedPermissions
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [cloudPcSourceDeviceImage](../resources/cloudpcsopedpermission.md) collection in the response body.
This API supports filter with permission, when no filter, this function will return all effective scoped permissions and scope Tag ids of the authenticated user.

## Examples 1

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "virtualendpoint_retrieveScopedPermissions"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/retrieveScopedPermissions
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Edm.String)"
}
-->

```http
HTTP/1.1 200 OK
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.cloudPcScopedPermission)",
    "@odata.count": 4,
    "value": [
        {
            "permission": "Microsoft.CloudPC/ProvisioningPolicies/Create",
            "scopeIds": ["1"]
        },
        {
            "permission": "Microsoft.CloudPC/ProvisioningPolicies/Update",
            "scopeIds": ["1","2"]
        },
        {
            "permission": "Microsoft.CloudPC/ProvisioningPolicies/Read",
            "scopeIds": ["1","2"]
        },
        {
            "permission": "Microsoft.CloudPC/ProvisioningPolicies/Assign",
            "scopeIds": ["1"]
        }
    ]
}
```

## Examples 2

### Request

The following is an example of the request with filter.

<!-- {
  "blockType": "request",
  "name": "virtualendpoint_retrieveScopedPermissions"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/retrieveScopedPermissions?$filter=permission in ('Microsoft.CloudPC/ProvisioningPolicies/Update','Microsoft.CloudPC/ProvisioningPolicies/Create')
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Edm.String)"
}
-->

```http
HTTP/1.1 200 OK
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.cloudPcScopedPermission)",
    "@odata.count": 2,
    "value": [
        {
            "permission": "Microsoft.CloudPC/ProvisioningPolicies/Update",
            "scopeIds": ["1","2"]
        },
        {
            "permission": "Microsoft.CloudPC/ProvisioningPolicies/Update",
            "scopeIds": ["1"]
        }
    ]
}
```

## Examples 2

### Request

When the IT Admin is assigned Microsoft Entra Global admin, Windows365 admin or Intune admin via Microsoft Entra ID, it doesn't support scope tag, IT Admin will have full access to all Windows 365 resources, the permission is ["*"]. And scopeIds is empty, indicates the user is unscoped admin.
In such case, query is not supported.

<!-- {
  "blockType": "request",
  "name": "virtualendpoint_retrieveScopedPermissions"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/retrieveScopedPermissions
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Edm.String)"
}
-->

```http
HTTP/1.1 200 OK
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.cloudPcScopedPermission)",
    "@odata.count": 1,
    "value": [
        {
            "permission": "*",
            "scopeIds": []
        }
    ]
}
```
