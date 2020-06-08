---
title: "Update connectedOrganization"
description: "In the Azure AD access reviews feature, update an existing connectedOrganization object to change one or more of its properties."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Update connectedOrganization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an existing [connectedOrganization](../resources/connectedorganization.md) object to change one or more of its properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | EntitlementManagement.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /connectedOrganizations/{id}
```
## Request headers
| Name         | Type        | Description |
|:-------------|:------------|:------------|
| Authorization | string | Bearer \{token\}. Required. |

## Request body
In the request body, supply a JSON representation of the parameters of an [connectedOrganization](../resources/connectedorganization.md) object.

The following table shows the properties that can be supplied when you update an connectedOrganization.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| `displayName`             |`String`                                                        | The connected organization name.  |
| `description`             |`String`                                                        | The connected organization description. |



## Response
If successful, this method returns a `204, Accepted` response code and an [connectedOrganization](../resources/connectedorganization.md) object in the response body.

## Example

This is an example of updating a connected organization.

##### Request
In the request body, supply a JSON representation of the new properties of the [connectedOrganization](../resources/connectedorganization.md) object.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_connectedOrganization"
}-->
```http
PATCH https://graph.microsoft.com/beta/connectedOrganizations/006111db-0810-4494-a6df-904d368bd81b
Content-type: application/json

{
    "displayName":"Connected organization new name",
    "description":"Connected organization new description"
}
```



##### Response
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.connectedOrganization"
} -->
```http
HTTP/1.1 204 Accepted
Content-type: application/json

{
    "id": "006111db-0810-4494-a6df-904d368bd81b",
    "displayName":"Connected organization new name",
    "description":"Connected organization new description"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Update connectedOrganization",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
