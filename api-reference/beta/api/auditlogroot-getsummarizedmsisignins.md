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

Returns aggregated MSI [sign-in event](../resources/summarizedsignin.md) counts grouped by user, application, IP address, and time window, with drill-down capability using individual requestIds via the /signIns endpoint.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "auditlogroot-getsummarizedmsisignins-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/auditlogroot-getsummarizedmsisignins-permissions.md)]

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
      "id": "e3f5a8c1-7890-1234-cdef-567890123456",
      "firstSignInDateTime": "2025-02-26T06:08:33Z",
      "userPrincipalName": "",
      "appId": "89bee1f7-5e6e-4d8a-9f49-f1ba3a15c45b",
      "appDisplayName": "Azure Logic Apps",
      "ipAddress": "203.0.113.142",
      "conditionalAccessStatus": "success",
      "resourceDisplayName": "Azure Storage",
      "resourceId": "e406a681-f3d4-42a8-90b6-c2b029497af1",
      "tenantId": "12345678-1234-1234-1234-123456789012",
      "servicePrincipalName": null,
      "servicePrincipalId": "",
      "status": {
        "errorCode": 0,
        "failureReason": null,
        "additionalDetails": null
      },
      "managedServiceIdentity": {
        "msiType": "systemAssigned",
        "associatedResourceId": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/myResourceGroup/providers/Microsoft.Logic/workflows/myLogicApp",
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
      "id": "f7b9d2e4-3456-7890-abcd-ef1234567890",
      "firstSignInDateTime": "2025-02-26T06:18:55Z",
      "userPrincipalName": "",
      "appId": "c44b4083-3bb0-49c1-b47d-974e53cbdf3c",
      "appDisplayName": "Azure Portal",
      "ipAddress": "198.51.100.201",
      "conditionalAccessStatus": "success",
      "resourceDisplayName": "Microsoft Graph",
      "resourceId": "00000003-0000-0000-c000-000000000000",
      "tenantId": "12345678-1234-1234-1234-123456789012",
      "servicePrincipalName": null,
      "servicePrincipalId": "",
      "status": {
        "errorCode": 0,
        "failureReason": null,
        "additionalDetails": null
      },
      "managedServiceIdentity": {
        "msiType": "userAssigned",
        "associatedResourceId": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myUserAssignedIdentity",
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
      "id": "a8c4f6e2-5678-9012-bcde-f01234567890",
      "firstSignInDateTime": "2025-02-26T06:42:17Z",
      "userPrincipalName": "",
      "appId": "0cd196ee-71bf-4fd6-a57c-b491ffd4fb91",
      "appDisplayName": "Azure DevOps",
      "ipAddress": "192.0.2.33",
      "conditionalAccessStatus": "failure",
      "resourceDisplayName": "Azure Key Vault",
      "resourceId": "cfa8b339-82a2-471a-a3c9-0fc0be7a4093",
      "tenantId": "12345678-1234-1234-1234-123456789012",
      "servicePrincipalName": null,
      "servicePrincipalId": "",
      "status": {
        "errorCode": 70011,
        "failureReason": "The resource is not available",
        "additionalDetails": "Managed identity not found"
      },
      "managedServiceIdentity": {
        "msiType": "systemAssigned",
        "associatedResourceId": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/myResourceGroup/providers/Microsoft.Web/sites/myWebApp",
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

