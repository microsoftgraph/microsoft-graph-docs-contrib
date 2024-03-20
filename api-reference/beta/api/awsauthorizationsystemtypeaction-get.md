---
title: "Get awsAuthorizationSystemTypeAction"
description: "Read the properties and relationships of an awsAuthorizationSystemTypeAction object."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get awsAuthorizationSystemTypeAction
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "awsauthorizationsystemtypeaction_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/awsauthorizationsystemtypeaction-get-permissions.md)]

<!--
[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions/{awsAuthorizationSystemTypeActionId}

GET /external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions(externalId={externalId})
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_awsauthorizationsystemtypeaction"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions/ZWMyOkFjY2VwdFJlc2VydmVkSW5zdGFuY2VzRXhjaGFuZ2VRdW90ZQ
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-awsauthorizationsystemtypeaction-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.awsAuthorizationSystemTypeAction"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/actions",
  "value": [
    {
      "@odata.type": "graph.awsAuthorizationSystemTypeAction",
      "id": "ZWMyOkFjY2VwdFJlc2VydmVkSW5zdGFuY2VzRXhjaGFuZ2VRdW90ZQ",
      "externalId": "ec2:AcceptReservedInstancesExchangeQuote",
      "resourceTypes": ["reserved-instances"],
      "severity": "high",
      "actionType": null,
      "service": {
        "id": "ec2"
      }
    }
  ]
}
```

