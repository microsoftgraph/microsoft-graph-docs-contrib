---
title: "List externalGroupMembers"
description: "Get the externalGroupMember resources from the members navigation property."
author: "snlraju-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: apiPageType
---

# List externalGroupMembers

Namespace: microsoft.graph

Get the externalGroupMember resources from the members navigation property.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|ExternalItem.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /connections/{connectionsId}/groups/{externalGroupId}/members
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [externalGroupMember](../resources/externalgroupmember.md) objects in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_externalgroupmember"
}
-->

``` http
GET https://graph.microsoft.com/beta/connections/contosohr/groups/31bea3d537902000/members
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.externalGroupMember)"
}
-->

``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": [
    {
      "@odata.type": "#microsoft.graph.externalGroupMember",
      "id": "e811976d-83df-4cbd-8b9b-5215b18aa874",
      "type": "user",
      "identitySource": "azureActiveDirectory"
    },
    {
      "@odata.type": "#microsoft.graph.externalGroupMember",
      "id": "e5477431-1038-484e-bf69-1dfedb97a110",
      "type": "group",
      "identitySource": "azureActiveDirectory"
    },
    {
      "@odata.type": "#microsoft.graph.externalGroupMember",
      "id": "14m1b9c38qe647f6a",
      "type": "group",
      "identitySource": "external"
    }
  ]
}
```
