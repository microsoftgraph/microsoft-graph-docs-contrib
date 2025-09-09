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

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "auditlogroot-getsummarizedmsisignins-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/auditlogroot-getsummarizedmsisignins-permissions.md)]

[!INCLUDE [rbac-signin-apis-read](../includes/rbac-for-apis/rbac-signin-apis-read.md)]
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

This method supports the `$filter` [OData query parameter](/graph/query-parameters) to help customize the response. You can apply `$filter` on one or more of the following properties of the [sign-in event](../resources/summarizedsignin.md) resource. You may also apply the `$top` query parameter to limit the number of results returned to a specific number. The default and max `$top` parameter is 1000 records. 

| Property          | Description                                                                                                                     | Example                                                                   |
|:------------------|:--------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------|
| id      | Filter for sign in events relating to a specific request id. Supported filter operators: `eq`.| `/getSummarizedMSISignIns(aggregationWindow='h1')?$filter=id eq 'e3f5a8c1-7890-1234-cdef-567890123456'`           |
| userPrincipalName   | Filter for only sign in events relating to a specific user principal name. Supported filter operators are: `eq`.                                              | `/getSummarizedMSISignIns(aggregationWindow='h1')?$filter=userPrincipalName eq 'johndoe@contoso.net'`        |
| appId     | Filter for events from a specific application ID. Supported filter operators are: `eq`.                                          | `/getSummarizedMSISignIns(aggregationWindow='d1')?$filter=appId eq '00000000-0000-0000-0000-000000000000'`         |
| appDisplayName  | Filter for events from a specific application display name. Supported filter operators are: `eq`.              | `/getSummarizedMSISignIns(aggregationWindow='h6')?$filter=appDisplayName eq 'Azure Logic Apps'`       |
| ipAddress   | Filter by IP address. Supported filter operators are: `eq` and `startswith()`. Supports case insensitive.                        | `/getSummarizedMSISignIns(aggregationWindow='h1')?$filter=ipAddress eq '0.0.0.0'`   |
| conditionalAccessStatus | Filter by conditional access status. Supported filter operators are: `eq`.              | `/getSummarizedMSISignIns(aggregationWindow='d1')?$filter=conditionalAccessStatus eq 'success'` |
| resourceDisplayName | Filter by resource display name. Supported filter operators are: `eq`.              | `/getSummarizedMSISignIns(aggregationWindow='d1')?$filter=resourceDisplayName eq 'Microsoft Graph API'` |
| resourceId | Filter by conditional access status. Supported filter operators are: `eq`.              | `/getSummarizedMSISignIns(aggregationWindow='d1')?$filter=resourceId eq '00000003-0000-0000-c000-000000000000'` |
| tenantId | Filter by tenant ID. Supported filter operators are: `eq`.              | `/getSummarizedMSISignIns(aggregationWindow='h1')?$filter=tenantId eq '00000000-0000-0000-0000-000000000000'` |
| servicePrincipalName | Filter by service principal name. Supported filter operators are: `eq` and `startswith()`. Supports case insensitive.              | `/getSummarizedMSISignIns(aggregationWindow='h6')?$filter=servicePrincipalName eq 'myServicePrincipal'` |
| servicePrincipalId | Filter by service principal ID. Supported filter operators are: `eq`.              | `/getSummarizedMSISignIns(aggregationWindow='d1')?$filter=servicePrincipalId eq 'a1b2c3d4-e5f6-7890-abcd-ef1234567890'` |
| status | Filter by sign-in status error code. Supported filter operators are: `eq`.              | `/getSummarizedMSISignIns(aggregationWindow='h1')?$filter=status/errorCode eq 0` |
| managedServiceIdentity | Filter by managed service identity type. Supported filter operators are: `eq`.              | `/getSummarizedMSISignIns(aggregationWindow='d1')?$filter=managedServiceIdentity/msiType eq 'systemAssigned'` |
| agent | Filter by agent type. Supported filter operators are: `eq`.              | `/getSummarizedMSISignIns(aggregationWindow='h6')?$filter=agent/agentType eq 'notAgentic'` |

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
<!-- {
  "blockType": "request",
  "name": "auditlogrootthis.getsummarizedmsisignins"
}
-->
``` http
GET https://graph.microsoft.com/beta/auditLogs/getSummarizedMSISignIns(aggregationWindow='d1')
```


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

