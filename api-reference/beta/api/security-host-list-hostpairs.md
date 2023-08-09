---
title: "List hostPairs"
description: "Get the list of hostPair resources associated with a host, where that host is either the parent or the child."
author: "jakedavies-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# List hostPairs
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Get the list of [hostPair](../resources/security-hostpair.md) resources associated with a host, where that host is *either* the *parent* or the *child*.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ThreatIntelligence.Read.All.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|ThreatIntelligence.Read.All.|

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/threatIntelligence/hosts/{hostId}/hostPairs
```

## Optional query parameters
This method supports `$count` `$filter`, `$orderby`, `$select`, `$skip`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

The following properties can be used for `$filter` calls.

|Property|Example|Notes|
|:---|:---|:---|
|All [hostPair](../resources/security-hostpair.md) properties|`$filter=(linkKind eq 'redirect')`|Use the name as it appears in the [hostPair](../resources/security-hostpair.md) resource.|
|childHost/id|`$filter=(childHost/id eq 'contoso.com')`|Full path is requried for `$filter` usage.|
|parentHost/id|`$filter=(parentHost/id in ('contoso.com','downstream.consoso.com'))`|Full path is required for `$filter` usage.|

The following properties can be used for `$orderby` calls.

|Property|Example|Notes|
|:---|:---|:---|
|firstSeenDateTime|`$orderby=firstSeenDateTime desc`||
|lastSeenDateTime|`$orderby=lastSeenDateTime asc`||

The following properties can be used for `$select` calls.

|Property|Example|Notes|
|:---|:---|:---|
|All [hostPair](../resources/security-hostpair.md) properties|`$select=id,firstSeenDateTime`|Use the name as it appears in the [hostPair](../resources/security-hostpair.md) resource.|
|parentHost|`$select=parentHost`|Does not support selecting on nested properties (for example `parentHost/id`).|
|childHost|`$select=childHost`|Does not support selecting on nested properties (for example `childHost/id`).|

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.hostPair](../resources/security-hostpair.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_hostpair",
  "sampleKeys": ["contoso.com"]
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/hosts/contoso.com/hostPairs
```

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.hostPair)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.hostPair",
      "id": "ZmluYWxSZWRpcmVjdCQkY29udG9zby5jb20kJGNvbnRvc28uY29tJCRjb250b3NvLmNvbQ==",
      "firstSeenDateTime": "2022-05-11T01:27:14.187Z",
      "lastSeenDateTime": "2023-06-23T06:33:31.493Z",
      "linkKind": "finalRedirect",
      "parentHost": {
        "id": "contoso.com"
      },
      "childHost": {
        "id": "contoso.com"
      }
    }
  ]
}
```