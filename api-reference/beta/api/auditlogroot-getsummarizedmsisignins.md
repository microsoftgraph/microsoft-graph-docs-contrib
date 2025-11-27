---
title: "auditLogRoot: getSummarizedMSISignIns"
description: "Returns aggregated MSI sign-in event counts grouped by user, application, IP address, and time window, with drill-down capability using individual requestIds via the /signIns endpoint."
author: "cumansfi"
ms.date: 08/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# auditLogRoot: getSummarizedMSISignIns

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns aggregated MSI [sign-in event](../resources/summarizedsignin.md) counts grouped by user, application, IP address, and time window, with drill-down capability using individual requestIds via the [/signIns](../api/signin-list.md) endpoint.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "auditlogroot-getsummarizedmsisignins-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/auditlogroot-getsummarizedmsisignins-permissions.md)]

[!INCLUDE [rbac-directoryaudit-apis](../includes/rbac-for-apis/rbac-directoryaudit-apis.md)]
## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /auditLogs/getSummarizedMSISignIns(aggregationWindow='{aggregationWindow}')
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|aggregationWindow|aggregationWindow|The aggregation window to get summary for. The possible values are: `h1` (1 hour), `h6` (6 hours), `d1` (1 day).|

## Optional query parameters

This method supports the `$filter` [OData query parameter](/graph/query-parameters) to help customize the response. You can apply `$filter` on one or more of the following properties of the [summarizedSignIn](../resources/summarizedsignin.md) resource. For general information, see [OData query parameters](/graph/query-parameters). You may also apply the `$top` query parameter to limit the number of results returned to a specific number. The default and max `$top` parameter is 1000 records.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [summarizedSignIn](../resources/summarizedsignin.md) collection in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "auditlogrootthis.getsummarizedmsisignins"
}
-->
``` http
GET https://graph.microsoft.com/beta/auditLogs/getSummarizedMSISignIns(aggregationWindow='d1')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/auditlogrootthisgetsummarizedmsisignins-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/auditlogrootthisgetsummarizedmsisignins-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/auditlogrootthisgetsummarizedmsisignins-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/auditlogrootthisgetsummarizedmsisignins-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/auditlogrootthisgetsummarizedmsisignins-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/auditlogrootthisgetsummarizedmsisignins-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.summarizedSignIn)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "signInCount": 18,
      "aggregationDateTime": "2025-02-26T06:00:00Z",
      "id": "00000000-0000-0000-0000-000000000000",
      "firstSignInDateTime": "2025-02-26T06:08:33Z",
      "userPrincipalName": "",
      "appId": "00000000-0000-0000-0000-000000000000",
      "appDisplayName": "Azure Logic Apps",
      "ipAddress": "0.0.0.0",
      "conditionalAccessStatus": "success",
      "resourceDisplayName": "Azure Storage",
      "resourceId": "00000000-0000-0000-0000-000000000000",
      "tenantId": "00000000-0000-0000-0000-000000000000",
      "servicePrincipalName": null,
      "servicePrincipalId": "",
      "status": {
        "errorCode": 0,
        "failureReason": null,
        "additionalDetails": null
      },
      "managedServiceIdentity": {
        "msiType": "systemAssigned",
        "associatedResourceId": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Logic/workflows/myLogicApp",
        "federatedTokenId": null,
        "federatedTokenIssuer": null
      },
      "agent": {
        "agentType": "notAgentic",
        "parentAppId": null
      }
    },
    {
      "signInCount": 9,
      "aggregationDateTime": "2025-02-26T06:00:00Z",
      "id": "00000000-0000-0000-0000-000000000000",
      "firstSignInDateTime": "2025-02-26T06:18:55Z",
      "userPrincipalName": "",
      "appId": "00000000-0000-0000-0000-000000000000",
      "appDisplayName": "Azure Portal",
      "ipAddress": "0.0.0.0",
      "conditionalAccessStatus": "success",
      "resourceDisplayName": "Microsoft Graph",
      "resourceId": "00000000-0000-0000-0000-000000000000",
      "tenantId": "00000000-0000-0000-0000-000000000000",
      "servicePrincipalName": null,
      "servicePrincipalId": "",
      "status": {
        "errorCode": 0,
        "failureReason": null,
        "additionalDetails": null
      },
      "managedServiceIdentity": {
        "msiType": "userAssigned",
        "associatedResourceId": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myUserAssignedIdentity",
        "federatedTokenId": "arn:aws:iam::123456789012:role/MyFederatedRole",
        "federatedTokenIssuer": "https://token.actions.githubusercontent.com"
      },
      "agent": {
        "agentType": "notAgentic",
        "parentAppId": null
      }
    },
    {
      "signInCount": 5,
      "aggregationDateTime": "2025-02-26T06:00:00Z",
      "id": "00000000-0000-0000-0000-000000000000",
      "firstSignInDateTime": "2025-02-26T06:42:17Z",
      "userPrincipalName": "",
      "appId": "00000000-0000-0000-0000-000000000000",
      "appDisplayName": "Azure DevOps",
      "ipAddress": "0.0.0.0",
      "conditionalAccessStatus": "failure",
      "resourceDisplayName": "Azure Key Vault",
      "resourceId": "00000000-0000-0000-0000-000000000000",
      "tenantId": "00000000-0000-0000-0000-000000000000",
      "servicePrincipalName": null,
      "servicePrincipalId": "",
      "status": {
        "errorCode": 70011,
        "failureReason": "The resource is not available",
        "additionalDetails": "Managed identity not found"
      },
      "managedServiceIdentity": {
        "msiType": "systemAssigned",
        "associatedResourceId": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Web/sites/myWebApp",
        "federatedTokenId": null,
        "federatedTokenIssuer": null
      },
      "agent": {
        "agentType": "notAgentic",
        "parentAppId": null
      }
    }
  ]
}
```

