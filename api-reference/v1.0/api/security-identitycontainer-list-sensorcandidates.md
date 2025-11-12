---
title: "List sensorCandidate objects"
description: "Get a list of the sensorCandidate objects and their properties."
author: "SamuelBenichou"
ms.date: 10/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List sensorCandidate objects

Namespace: microsoft.graph.security

Get a list of the [sensorCandidate](../resources/security-sensorcandidate.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_identitycontainer_list_sensorcandidates" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-identitycontainer-list-sensorcandidates-permissions.md)]

[!INCLUDE [rbac-mdi-apis](../includes/rbac-for-apis/rbac-mdi-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/sensorCandidates
```

## Optional query parameters

This method supports the `$filter` (filter by **senseClientVersion**) and `$count` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [sensorCandidate](../resources/security-sensorcandidate.md) objects in the response body.

## Examples

### Request 

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_sensorcandidate"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/identities/sensorCandidates
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.sensorCandidate"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.sensorCandidate",
      "id": "c0633ebb-8cfb-f17a-0b9e-83aa661f53a3",
      "computerDnsName": "win-11.def.defensor.local",
      "senseClientVersion": "10.8780.27711.1000",
      "lastSeenDateTime": "2024-10-29T19:55:10.9452778Z"
    }
  ]
}
```
