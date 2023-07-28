---
title: "Create resourceRoleScope"
description: "Create a new accessPackageResourceRoleScope for adding a resource role to an access package."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "apiPageType"
---

# Create resourceRoleScope

Namespace: microsoft.graph

Create a new [accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) for adding a resource role to an access package. The access package resource, for a group, an app, or a SharePoint Online site, must already exist in the access package catalog, and the **originId** for the resource role retrieved from the [list of the resource roles](accesspackagecatalog-list-resourceroles.md). Once you add the resource role scope to the access package, the user will receive this resource role through any current and future access package assignments.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /identityGovernance/entitlementManagement/accessPackages/{id}/resourceRoleScopes
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json. Required.  |

## Request body

In the request body, supply a JSON representation of an [accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) object.  Include in the object the relationships to an [accessPackageResourceRole](../resources/accesspackageresourcerole.md) object, which can be obtained from a request to [list access package resource roles of a resource in a catalog](accesspackagecatalog-list-resourceroles.md), and an [accessPackageResourceScope](../resources/accesspackageresourcescope.md) object, which can be obtained from a request to [list access package resources](accesspackagecatalog-list-resources.md) with `$expand=scopes`.

## Response

If successful, this method returns a 200-series response code and a new [accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) object in the response body.

## Examples

### Example 1: Add a SharePoint Online site role to an access package

#### Request

The following is an example of the request adding a SharePoint Online site role to an access package's list of resource roles.  The access package resource for the site must already have been added to the access package catalog containing this access package.

The request contains an [accessPackageResourceRole](../resources/accesspackageresourcerole.md) object. Each type of resource defines the format of the originId field in a resource role. For a SharePoint Online site, the originId will be the sequence number of the role in the site.

<!-- {
  "blockType": "request",
  "name": "create_accesspackageresourcerolescope_from_accesspackage2"
}-->

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackages/{id}/resourceRoleScopes
Content-type: application/json

{
    "role": {
        "id": "6646a29e-da03-49f6-bcd9-dec124492de3",
        "displayName": "Contributors",
        "description": null,
        "originSystem": "SharePointOnline",
        "originId": "4",
        "resource": {
            "id": "53c71803-a0a8-4777-aecc-075de8ee3991"
        }
    },
    "scope": {
        "id": "5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33",
        "displayName": "Root",
        "description": "Root Scope",
        "originId": "https://contoso.sharepoint.com/portals/Community",
        "originSystem": "SharePointOnline",
        "isRootScope": true
    }
}
```


#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageResourceRoleScope"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
   "id": "6646a29e-da03-49f6-bcd9-dec124492de3_5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33",
    "createdDateTime": "2023-06-28T01:19:48.4216782Z"
}
```
