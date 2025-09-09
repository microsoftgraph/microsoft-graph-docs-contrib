---
title: "auditLogRoot: getSummarizedServicePrincipalSignIns"
description: "Returns aggregated service principal sign-in event counts grouped by user, application, IP address, and time window, with drill-down capability using individual requestIds via the /signIns endpoint."
author: "cumansfi"
ms.date: 08/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# auditLogRoot: getSummarizedServicePrincipalSignIns

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns aggregated service principal [sign-in event](../resources/summarizedsignin.md) counts grouped by user, application, IP address, and time window, with drill-down capability using individual requestIds via the /signIns endpoint.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "auditlogroot-getsummarizedserviceprincipalsignins-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/auditlogroot-getsummarizedserviceprincipalsignins-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /auditLogs/getSummarizedServicePrincipalSignIns(aggregationWindow='{aggregationWindow}')
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
  "name": "auditlogrootthis.getsummarizedserviceprincipalsignins"
}
-->
``` http
GET https://graph.microsoft.com/beta/auditLogs/getSummarizedServicePrincipalSignIns(aggregationWindow='d1')
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
      "signInCount": 24,
      "aggregationDateTime": "2025-02-26T06:00:00Z",
      "id": "b7e9f1c3-5678-9012-abcd-ef1234567890",
      "firstSignInDateTime": "2025-02-26T06:05:14Z",
      "userPrincipalName": "",
      "appId": "14d82eec-204b-4c2f-b7e8-296a70dab67e",
      "appDisplayName": "Microsoft Teams",
      "ipAddress": "203.0.113.88",
      "conditionalAccessStatus": "success",
      "resourceDisplayName": "Microsoft Graph",
      "resourceId": "00000003-0000-0000-c000-000000000000",
      "tenantId": "12345678-1234-1234-1234-123456789012",
      "servicePrincipalName": "teams-bot-service",
      "servicePrincipalId": "87654321-4321-4321-4321-210987654321",
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
      "signInCount": 12,
      "aggregationDateTime": "2025-02-26T06:00:00Z",
      "id": "c9d8e7f6-2468-1357-9bce-df0123456789",
      "firstSignInDateTime": "2025-02-26T06:12:45Z",
      "userPrincipalName": "",
      "appId": "797f4846-ba00-4fd7-ba43-dac1f8f63013",
      "appDisplayName": "Azure Resource Manager",
      "ipAddress": "198.51.100.77",
      "conditionalAccessStatus": "success",
      "resourceDisplayName": "Azure Key Vault",
      "resourceId": "cfa8b339-82a2-471a-a3c9-0fc0be7a4093",
      "tenantId": "12345678-1234-1234-1234-123456789012",
      "servicePrincipalName": "automation-service",
      "servicePrincipalId": "11223344-5566-7788-9900-aabbccddeeff",
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
      "signInCount": 7,
      "aggregationDateTime": "2025-02-26T06:00:00Z",
      "id": "d5f8a2b4-9876-5432-bcde-f01234567890",
      "firstSignInDateTime": "2025-02-26T06:33:21Z",
      "userPrincipalName": "",
      "appId": "00000002-0000-0ff1-ce00-000000000000",
      "appDisplayName": "Office 365 Exchange Online",
      "ipAddress": "192.0.2.99",
      "conditionalAccessStatus": "notApplied",
      "resourceDisplayName": "Office 365 Exchange Online",
      "resourceId": "00000002-0000-0ff1-ce00-000000000000",
      "tenantId": "12345678-1234-1234-1234-123456789012",
      "servicePrincipalName": "exchange-connector",
      "servicePrincipalId": "aabbccdd-eeff-1122-3344-556677889900",
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
    }
  ]
}
```

