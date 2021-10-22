---
title: "Add connected organization external sponsor"
description: "Add a user or group to the connected organization's external sponsors."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---
# Add externalSponsors

Namespace: microsoft.graph

Add a user or a group to the connected organization's external sponsors. The external sponsors are a set of users who can approve requests on behalf of other users from that connected organization.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | EntitlementManagement.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | EntitlementManagement.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /identityGovernance/entitlementManagement/connectedOrganizations/{id}/externalSponsors/$ref
```

## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required. |
| Content-type | application/json. Required. |

## Request body
In the request body, supply a JSON representation of the reference to the [user](../resources/user.md) or [group](../resources/group.md) object to be added, as an `@odata.id` property with the full URI of the user or group.

## Response
If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "create_externalsponsor_from_connectedorganization"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/connectedOrganizations/{id}/externalSponsors/$ref
Content-type: application/json
Content-length: 30

{
  "@odata.id": "https://graph.microsoft.com/v1.0/users/{id}"
}
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

