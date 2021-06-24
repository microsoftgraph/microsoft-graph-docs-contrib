---
title: "Get credentialUserRegistrationsSummary"
description: "Read the properties and relationships of a credentialUserRegistrationsSummary object."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# Get credentialUserRegistrationsSummary
Namespace: microsoft.graph.managedTenants



Read the properties and relationships of a [credentialUserRegistrationsSummary](../resources/managedtenants-credentialuserregistrationssummary.md) object.

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
GET /tenantRelationships/managedTenants/credentialUserRegistrationsSummaries/{credentialUserRegistrationsSummaryId}
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

If successful, this method returns a `200 OK` response code and a [credentialUserRegistrationsSummary](../resources/managedtenants-credentialuserregistrationssummary.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_credentialuserregistrationssummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/credentialUserRegistrationsSummaries/{credentialUserRegistrationsSummaryId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.credentialUserRegistrationsSummary"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.managedTenants.credentialUserRegistrationsSummary",
    "id": "aef28d78-8d78-aef2-788d-f2ae788df2ae",
    "tenantId": "String",
    "tenantDisplayName": "String",
    "mfaAndSsprCapableUserCount": "Integer",
    "ssprEnabledUserCount": "Integer",
    "mfaRegisteredUserCount": "Integer",
    "ssprRegisteredUserCount": "Integer",
    "totalUserCount": "Integer",
    "securityDefaultsEnabled": "Boolean",
    "mfaConditionalAccessPolicyState": "String",
    "lastRefreshedDateTime": "String (timestamp)"
  }
}
```

