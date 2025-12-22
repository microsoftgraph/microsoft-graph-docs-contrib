---
title: "teamsPolicyAssignment: getPolicyId"
description: "Get the policy ID for a given policy name and policy type within Teams administration."
author: "praspatil05"
ms.date: 12/19/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# teamsPolicyAssignment: getPolicyId

Namespace: microsoft.graph.teamsAdministration



Get the [policy ID](../resources/teamsadministration-policyidentifierdetail.md) for a given policy name and policy type within Teams administration.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "teamsadministration-teamspolicyassignment-getpolicyid-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/teamsadministration-teamspolicyassignment-getpolicyid-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/teams/policy/getPolicyId(type='{policyType}',name='{policyName}')
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|type|String|The policy type, such as `teamsMeetingBroadcastPolicy` and `teamsMeetingPolicy`.|
|name|String|The name of the policy instance, such as `allOn`.|


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.teamsAdministration.policyIdentifierDetail](../resources/teamsadministration-policyidentifierdetail.md) collection in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "teamspolicyassignmentthis.getpolicyid"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/admin/teams/policy/getPolicyId(type='TeamsMeetingPolicy',name='AllOn')
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamsAdministration.policyIdentifierDetail)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamsAdministration.policyIdentifierDetail",
      "name": "Tag:AllOn",
      "policyId": "VnMAaN3X2X1B9tEHx1CJWfC76PSaKEzA4NoUuqIMRUo"
    }
  ]
}
```

