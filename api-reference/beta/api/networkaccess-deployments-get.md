---
title: "Get deployment objects"
description: "Retrieve a single deployment log by ID that includes the status of deployment performed through the Global Secure Access services."
author: cagautham
ms.date: 10/14/2025
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
---

# Get deployment objects

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a [deployment](../resources/networkaccess-deployment.md) log by ID that includes the status of deployment performed through the Global Secure Access services.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_deployment_logs_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-deployment-logs-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/deployments('id')
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [deployment](../resources/networkaccess-deployment.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_deploymentLog"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/deployments('61addd7c-33ca-4737-93cc-2a3adc933562')
```


### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.deployment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/deployments",
    "requestId": "61addd7c-33ca-4737-93cc-2a3adc933562",
    "lastModifiedDateTime": "2025-01-19T21:26:35.0829571Z",
    "initiatedBy": "GSA Service account",
    "deploymentEndDateTime": "2025-01-19T21:29:39Z",
    "status": {
        "deploymentStage": "succeeded",
        "message": null
    },
    "configuration": {
        "@odata.type": "#microsoft.graph.networkaccess.deploymentConfiguration",
        "operationName": "Redistribute Forwarding Profile",
        "changeType": "forwardingProfile",
        "current": {
            "id": "e1d060bc-9ddc-4966-a31b-ca469039b589",
            "name": "Test profile"
        }
    }
}
```
<!--
{
  "type": "#page.annotation",
  "description": "Get deployment logs",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: get_deploymentLog:
      Malformed function params '{var}'. Expected key-value params e.g. /function1(key=value). Remove parentheses if no params are expected."
  ]
}
-->









