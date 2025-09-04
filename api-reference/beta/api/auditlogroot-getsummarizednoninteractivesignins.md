---
title: "auditLogRoot: getSummarizedNonInteractiveSignIns"
description: "Returns aggregated non-interactive sign-in event counts grouped by user, application, IP address, and time window, with drill-down capability using individual requestIds via the /signIns endpoint."
author: "cumansfi"
ms.date: 08/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# auditLogRoot: getSummarizedNonInteractiveSignIns

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns aggregated non-interactive [sign-in event](../resources/summarizedsignin.md) counts grouped by user, application, IP address, and time window, with drill-down capability using individual requestIds via the /signIns endpoint.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "auditlogroot-getsummarizednoninteractivesignins-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/auditlogroot-getsummarizednoninteractivesignins-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /auditLogs/getSummarizedNonInteractiveSignIns(aggregationWindow='{aggregationWindow}')
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
  "name": "auditlogrootthis.getsummarizednoninteractivesignins"
}
-->
``` http
GET https://graph.microsoft.com/beta/auditLogs/getSummarizedNonInteractiveSignIns(aggregationWindow='parameterValue')
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
      "signInCount": 15,
      "aggregationDateTime": "2025-02-26T06:00:00Z",
      "id": "f1e23eff-9fb7-46a4-a827-671dcff5a728",
      "firstSignInDateTime": "2025-02-26T06:15:32Z",
      "userPrincipalName": "automation@contoso.com",
      "appId": "c44b4083-3bb0-49c1-b47d-974e53cbdf3c",
      "appDisplayName": "Azure Portal",
      "ipAddress": "203.0.113.45",
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
        "msiType": "none",
        "associatedResourceId": null,
        "federatedTokenId": null,
        "federatedTokenIssuer": null
      },
      "agent": {
        "agentType": "notAgentic",
        "parentAppId": null
      }
    },
    {
      "signInCount": 8,
      "aggregationDateTime": "2025-02-26T06:00:00Z",
      "id": "a2b4c6d8-1234-5678-9abc-def012345678",
      "firstSignInDateTime": "2025-02-26T06:22:18Z",
      "userPrincipalName": "serviceaccount@contoso.com",
      "appId": "04b07795-8ddb-461a-bbee-02f9e1bf7b46",
      "appDisplayName": "Microsoft Azure CLI",
      "ipAddress": "198.51.100.22",
      "conditionalAccessStatus": "notApplied",
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
        "msiType": "none",
        "associatedResourceId": null,
        "federatedTokenId": null,
        "federatedTokenIssuer": null
      },
      "agent": {
        "agentType": "notAgentic",
        "parentAppId": null
      }
    },
    {
      "signInCount": 3,
      "aggregationDateTime": "2025-02-26T06:00:00Z",
      "id": "e8f7a6b5-4321-9876-cdef-012345678901",
      "firstSignInDateTime": "2025-02-26T06:45:07Z",
      "userPrincipalName": "monitoring@contoso.com",
      "appId": "d4ebce55-015a-49b5-a083-c84d1797ae8c",
      "appDisplayName": "Microsoft Intune",
      "ipAddress": "192.0.2.15",
      "conditionalAccessStatus": "failure",
      "resourceDisplayName": "Microsoft Graph",
      "resourceId": "00000003-0000-0000-c000-000000000000",
      "tenantId": "12345678-1234-1234-1234-123456789012",
      "servicePrincipalName": null,
      "servicePrincipalId": "",
      "status": {
        "errorCode": 50126,
        "failureReason": "Invalid username or password",
        "additionalDetails": "The user account is disabled"
      },
      "managedServiceIdentity": {
        "msiType": "none",
        "associatedResourceId": null,
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

