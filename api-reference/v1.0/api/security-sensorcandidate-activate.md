---
title: "sensorCandidate: activate"
description: "Activate Microsoft Defender for Identity sensors."
author: "SamuelBenichou"
ms.date: 10/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# sensorCandidate: activate

Namespace: microsoft.graph.security

Activate Microsoft Defender for Identity sensors.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_sensorcandidate_activate" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-sensorcandidate-activate-permissions.md)]

[!INCLUDE [rbac-mdi-apis](../includes/rbac-for-apis/rbac-mdi-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/identities/sensorCandidates/activate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type| Description                                                     |
|:---|:---|:----------------------------------------------------------------|
|serverIds|String collection| A collection of server identifiers for the sensors to activate. |

## Response

If successful, this action returns a `200 OK` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "sensorcandidatethis.activate"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/security/identities/sensorCandidates/activate
Content-Type: application/json

{
  "serverIds": [
    "c0633ebb-8cfb-f17a-0b9e-83aa661f53a3"
  ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
```
