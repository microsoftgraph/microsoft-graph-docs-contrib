---
title: "List connectedOrganizations"
description: "Retrieve a list of connectedOrganization objects."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---
# List connectedOrganizations

Namespace: microsoft.graph


Retrieve a list of [connectedOrganization](../resources/connectedorganization.md) objects.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
| Delegated (work or school account)     | EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/connectedOrganizations
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For example, to retrieve only the connected organizations with a specific display name, add `$filter=displayName eq 'Name'`. Similarly, to retrieve only the connected organizations with an identity source of a specific tenant, add `$filter=identitySources/any(is:is/microsoft.graph.azureActiveDirectoryTenant/tenantId eq '72f988bf-86f1-41af-91ab-2d7cd011db47')`. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [connectedOrganization](../resources/connectedorganization.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_connectedorganization"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/connectedOrganizations
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.connectedOrganization)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "04e7fa5f-fa5f-04e7-5ffa-e7045ffae704",
      "displayName": "String",
      "description": "String",
      "createdDateTime": "String (timestamp)",
      "modifiedDateTime": "String (timestamp)",
      "identitySources": [
        {
          "@odata.type": "microsoft.graph.azureActiveDirectoryTenant"
        }
      ],
      "state": "String"
    }
  ]
}
```


