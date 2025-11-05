---
title: "List deployment logs"
description: "Retrieve a list of logs that include the status of deployments performed through the Global Secure Access services."
author: cagautham
ms.date: 08/14/2025
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
---

# List deployment logs

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of logs that includes the status of [deployments](../resources/networkaccess-deployment.md) performed through the Global Secure Access services.

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
GET /networkAccess/deployments
```

## Optional query parameters

This method supports OData query parameters to help customize the response. You can use the following parameters:

|Parameter|Description|
|:---|:---|
| $filter |Filter items by property values (e.g., `status/deploymentStage eq 'succeeded'`).|
| $top |Show only the first n items.|
| $skip |Skip the first n items.|
| $orderby |Order items by property values.|

For more information, see [OData query parameters](/graph/query-parameters).
## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [deployment](../resources/networkaccess-deployment.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_deploymentLogs"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/deployments
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
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
    "value": [
        {
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
                    "changeType": "forwardingProfile"
                }
        }
    ]
}
```









