---
title: "superAzureServicePrincipalFinding: aggregatedSummary"
description: View the count of super Azure service principals in your authorization systems.
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
ms.date: 06/26/2024
---

# superAzureServicePrincipalFinding: aggregatedSummary
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [permissions-management-retirement-note](../../includes/permissions-management-retirement-note.md)]

View the count of super Azure service principals for the specified authorization systems in your Azure environment.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).
 
<!-- { "blockType": "permissions", "name": "superazureserviceprincipalfinding_aggregatedsummary" } -->
[!INCLUDE [permissions-table](../includes/permissions/superazureserviceprincipalfinding-aggregatedsummary-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.superAzureServicePrincipalFinding/microsoft.graph.aggregatedSummary(authorizationSystemIds=['azureAuthSystemId'])
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|authorizationSystemIds|String collection|The collection of IDs for the authorization systems against which to get the summary of records.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [permissionsAnalyticsAggregatedIdentitySummary](../resources/permissionsanalyticsaggregatedidentitysummary.md) in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "superazureserviceprincipalfindingthis.aggregatedsummary"
}
-->
``` http
GET GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.superAzureServicePrincipalFinding/aggregatedSummary(authorizationSystemIds=['00f7dcae-97f9-492b-af2e-36eb35b613af'])
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionsAnalyticsAggregatedIdentitySummary"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.permissionsAnalyticsAggregatedIdentitySummary",
    "totalCount": 7,
    "findingsCount": 1
}
```

