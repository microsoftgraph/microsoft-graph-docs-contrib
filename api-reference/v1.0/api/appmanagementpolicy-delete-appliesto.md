---
title: "Remove appliesTo"
description: "Remove an appManagementPolicy from an application or service principal object."
ms.localizationpriority: medium
author: "madansr7"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# Remove appliesTo

Namespace: microsoft.graph

Remove an [appManagementPolicy](../resources/appManagementPolicy.md) policy object from an application or service principal object. When you remove the appManagementPolicy, the application or service principal adopts the tenant-wide [tenantAppManagementPolicy](../resources/tenantappmanagementpolicy.md) setting. 

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                |
| :------------------------------------- | :--------------------------------------------------------- |
| Delegated (work or school account)     | Application.Read.All and Policy.ReadWrite.ApplicationConfiguration |
| Delegated (personal Microsoft account) | Not supported.                                             |
| Application                            | Application.Read.All and Policy.ReadWrite.ApplicationConfiguration |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /applications/{id}/appManagementPolicies/$ref
```

## Request headers

| Name          | Description                 |
|:--------------|:----------------------------|
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, provide a reference to a single policy object from the [appManagementPolicies](../resources/appmanagementpolicy.md) collection.

## Response

If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Examples

### Example 1: Remove an appManagementPolicy from an application object

#### Request

The following is an example of the request to remove an appManagementPolicy from an application.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "remove_appliesTo"
}-->

```msgraph-interactive
DELETE https://graph.microsoft.com/v1.0/applications/{id}/appManagementPolicies/$ref
Content-type: application/json

{
 "@odata.id":"https://graph.microsoft.com/v1.0/policies/appManagementPolicies/{id}"
}
```

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Remove an appManagementPolicy from a service principal object

#### Request

The following is an example of the request to remove an appManagementPolicy from a service principal.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "remove_appliesTo"
}-->

``` http
DELETE https://graph.microsoft.com/v1.0/servicePrincipals/{id}/appManagementPolicies/$ref

{
 "@odata.id":"https://graph.microsoft.com/v1.0/policies/appManagementPolicies/{id}"
}
```


#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "list resources for appManagementPolicies",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
