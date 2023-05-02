---
title: "Delete authenticationEventsFlow"
description: "Delete an authenticationEventsFlow object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Delete authenticationEventsFlow
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a specific [authenticationEventsFlow](../resources/authenticationeventsflow.md) resource by ID.

Among the types of authentication events flow objects derived from [authenticationEventsFlow](../resources/authenticationeventsflow.md), you can currently delete an [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfervicesignupeventsflow.md) resource.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EventListener.Read.All, EventListener.ReadWrite.All|
|Delegated (personal Microsoft account)|EventListener.Read.All, EventListener.ReadWrite.All|
|Application|EventListener.Read.All, EventListener.ReadWrite.All|

The work or school account needs to belong to one of the following roles:
<ul><li>Global Administrator
<li>External ID user flow administrator</ul>

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /identity/authenticationEventsFlows/{authenticationEventsFlow-id}/
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_authenticationeventsflow"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/identity/authenticationEventsFlows/0313cc37-d421-421d-857b-87804d61e33e
```


### Response
The following is an example of the response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

