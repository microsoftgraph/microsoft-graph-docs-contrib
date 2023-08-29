---
title: "Get governanceRoleDefinition"
description: "Retrieve the properties and relationships of a governanceRoleDefinition."
ms.localizationpriority: medium
doc_type: apiPageType
ms.prod: "governance"
author: "rkarim-ms"
---

# Get governanceRoleDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [pim-v2ResourceRoles-deprecation](../../includes/pim-v2ResourceRoles-deprecation.md)]

Retrieve the properties and relationships of a [governanceRoleDefinition](../resources/governanceroledefinition.md).

## Permissions

The following table shows the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-|:-|:-|:-|
| Azure AD | PrivilegedAccess.ReadWrite.AzureAD | Not supported. | PrivilegedAccess.Read.AzureAD |
| Azure resources | PrivilegedAccess.ReadWrite.AzureResources | Not supported. | PrivilegedAccess.Read.AzureResources |
| [group](../resources/group.md) | PrivilegedAccess.ReadWrite.AzureADGroup | Not supported. | PrivilegedAccess.Read.AzureADGroup |

The requestor must also have at least one role assignment on the resource which the [governanceRoleDefinition](../resources/governanceroledefinition.md) belongs to.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /privilegedAccess/azureResources/resources/{resourceId}/roleDefinitions/{id}
GET /privilegedAccess/azureResources/roleDefinitions/{id}?$filter=resourceId+eq+'{resourceId}'
```
## Optional query parameters
This method does **not** support the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}|


## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and [governanceRoleDefinition](../resources/governanceroledefinition.md) object in the response body.
## Example
This example shows how to get details of role definition DNS Zone Contributor in the subscription Wingtip Toys - Prod.
<!-- {
  "blockType": "request",
  "name": "get_governanceroledefinition"
}-->
##### Request
```http
GET https://graph.microsoft.com/beta/privilegedAccess/azureResources/resources/e5e7d29d-5465-45ac-885f-4716a5ee74b5/roleDefinitions/00efc9e0-1b96-4e9a-99a3-a3df0735cf88
```
##### Response
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.governanceRoleDefinition"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#governanceRoleDefinitions/$entity",
    "id": "00efc9e0-1b96-4e9a-99a3-a3df0735cf88",
    "resourceId": "e5e7d29d-5465-45ac-885f-4716a5ee74b5",
    "externalId": "/subscriptions/38ab2ccc-3747-4567-b36b-9478f5602f0d/providers/Microsoft.Authorization/roleDefinitions/befefa01-2a29-4197-83a8-272ff33ce314",
    "templateId": "befefa01-2a29-4197-83a8-272ff33ce314",
    "displayName": "DNS Zone Contributor"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get governanceRoleDefinition",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


