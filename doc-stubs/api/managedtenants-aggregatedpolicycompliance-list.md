---
title: "List aggregatedPolicyCompliances"
description: "Get a list of the aggregatedPolicyCompliance objects and their properties."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# List aggregatedPolicyCompliances
Namespace: microsoft.graph.managedTenants



Get a list of the [aggregatedPolicyCompliance](../resources/managedtenants-aggregatedpolicycompliance.md) objects and their properties.

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
GET /tenantRelationships/managedTenants/aggregatedPolicyCompliances
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

If successful, this method returns a `200 OK` response code and a collection of [aggregatedPolicyCompliance](../resources/aggregatedpolicycompliance.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_aggregatedpolicycompliance"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/aggregatedPolicyCompliances
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.managedTenants.aggregatedPolicyCompliance)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.managedTenants.aggregatedPolicyCompliance",
      "id": "1c33c14c-c14c-1c33-4cc1-331c4cc1331c",
      "tenantId": "String",
      "tenantDisplayName": "String",
      "compliancePolicyId": "String",
      "compliancePolicyName": "String",
      "compliancePolicyType": "String",
      "compliancePolicyPlatform": "String",
      "numberOfCompliantDevices": "Integer",
      "numberOfNonCompliantDevices": "Integer",
      "numberOfErrorDevices": "Integer",
      "policyModifiedDateTime": "String (timestamp)",
      "lastRefreshedDateTime": "String (timestamp)"
    }
  ]
}
```

