---
title: "signIn: confirmSafe"
description: "Allows you to mark Azure AD log events as safe for Azure AD Identity Protection"
author: "besiler"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# signIn: confirmSafe
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This API allows admins to mark an event in the Azure AD logs as safe. Admins can either mark that events flagged as risky by Azure AD Identity Protection are in fact safe or can mark unflagged events as safe if needed. To mark a sign-in as safe, include he requestID of the sign-in in the request body. If successful, this method returns a 204 No Content response code. It does not return anything in the response body.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|IdentityRiskyUser.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|IdentityRiskyUser.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /auditLogs/signIns/confirmSafe
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|requestIds|String collection|The requestIds of the events that should be marked safe for Azure AD Identity Protection.|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "signinthis.confirmsafe"
}
-->
``` http
POST https://graph.microsoft.com/beta/auditLogs/signIns/confirmSafe
Content-Type: application/json
Content-length: 42

{
  "requestIds": [
    "5a0c76d2-cb57-4ece-9bc1-c323178f116a",
    "96609214-09ef-4f80-9d4a-ace5fceecaec",
    "05020696-4eb8-45a3-918f-8f8bb7ad6015"
  ]
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

