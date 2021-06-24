---
title: "Get riskyUser"
description: "Read the properties and relationships of a riskyUser object."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# Get riskyUser
Namespace: microsoft.graph.managedTenants



Read the properties and relationships of a [riskyUser](../resources/managedtenants-riskyuser.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/riskyUsers/{riskyUserId}
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

If successful, this method returns a `200 OK` response code and a [riskyUser](../resources/managedtenants-riskyuser.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_riskyuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/riskyUsers/{riskyUserId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.riskyUser"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.managedTenants.riskyUser",
    "id": "491420ec-20ec-4914-ec20-1449ec201449",
    "userId": "String",
    "tenantId": "String",
    "tenantDisplayName": "String",
    "userDisplayName": "String",
    "userPrincipalName": "String",
    "riskState": "String",
    "riskLevel": "String",
    "riskDetail": "String",
    "isDeleted": "Boolean",
    "riskLastUpdatedDateTime": "String (timestamp)",
    "lastRefreshedDateTime": "String (timestamp)"
  }
}
```

