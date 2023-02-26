---
title: "unifiedRoleManagementAlert: refresh"
description: "Refresh incidents on all alerts or on a single alert for Privileged Identity Management (PIM) for Azure AD roles."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# unifiedRoleManagementAlert: refresh
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Refresh incidents on all alerts or on a single alert for Privileged Identity Management (PIM) for Azure AD roles.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementAlert.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagementAlert.ReadWrite.Directory|

## HTTP requests

<!-- {
  "blockType": "ignored"
}
-->
1) To refresh incidents on all alerts, use the below request.

``` http
POST /identityGovernance/roleManagementAlerts/alerts/refresh
```

2) To refresh a single alert, use the below request.

``` http
POST /identityGovernance/roleManagementAlerts/alerts/{alertId}/refresh
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
For refreshing incidents on all alerts (refresh collection of alerts), in the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|scopeType|String|The type of the scope where the alert is created. DirectoryRole is the only supported one for Azure AD Roles. New types like Application and Group may be introduced.|
|scopeId|String|The id of the scope where the alert is related. For example, directory id, application id, etc.|

For refreshing a single alert, a request body is not needed.


## Response

If successful, this action returns a `202 Accepted` response code with a 'Location' header which specifies the URL for polling the operation status.

## Examples

### Example 1: Refresh all the alerts under a resource scope like tenant.

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "unifiedrolemanagementalertthis.refresh"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/refresh?$filter=scopeId eq '67b47f38-0f0b-4e62-a3be-859140c2061f' and scopeType eq 'DirectoryRole'

Content-Type: application/json
```


#### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json
Location: https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/operations/5c5670d6-a2c0-a394-ef42-882954856de5
```

### Example 2: Refresh a single alert based on alert definition id under a resource scope like tenant.

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "unifiedrolemanagementalertthis.refresh"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_67b47f38-0f0b-4e62-a3be-859140c2061f_StaleSignInAlert/refresh

Content-Type: application/json
```


#### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json
Location: https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/operations/5c5670d6-a2c0-a394-ef42-882954856de5
```

