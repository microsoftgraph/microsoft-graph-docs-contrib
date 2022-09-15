---
title: "List appRoleAssignedResources (service principals that a user has appRoleAssignments to)"
description: "Get the service principals to which the user has an app role assignment either directly or through group membership."
author: "eringreenlee"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: apiPageType
---

# List appRoleAssignedResources (service principals that a user has appRoleAssignments to)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the service principals to which the user has an app role assignment either directly or through group membership.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permissions                                  | Type                                             | Entities/APIs Covered                                               |
| -------------------------------------------- | ------------------------------------------------ | ------------------------------------------------------------------- |
| Application.Read.All, Directory.Read.All | Delegated (work or school account) | Allows access to list of service principals and their app role assignments |
| Application.Read.All, Directory.Read.All | Application | Works on behalf of an application |
| Application.Read.All, Directory.Read.All | Delegated (personal MSFT account)) | **Not supported**  |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/appRoleAssignedResources?$count=true
ConsistencyLevel: eventual

GET /users/{usersId}/appRoleAssignedResources?$count=true
ConsistencyLevel: eventual
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
| ConsistencyLevel | eventual. This header and `$count` are required when calling this API. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries). |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [servicePrincipal](../resources/serviceprincipal.md) objects in the response body. If you don't specify the `$count` query parameter and set the **ConsistencyLevel** header to `eventual`, this API returns  `404 Not Found error`.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_appRoleAssignedResources_users"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/appRoleAssignedResources?$count=true
ConsistencyLevel: eventual
```


### Response
The following is an example of the response
The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipal",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "accountEnabled":true,
      "displayName":"amasf",
      "servicePrincipalType":"Application",
      "signInAudience":"AzureADMyOrg"
    }
  ]
}
