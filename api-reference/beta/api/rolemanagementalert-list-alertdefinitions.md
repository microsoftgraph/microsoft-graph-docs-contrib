---
title: "List unifiedRoleManagementAlertDefinition"
description: "Get a list of the unifiedRoleManagementAlertDefinition objects and their properties."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List unifiedRoleManagementAlertDefinition
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [unifiedRoleManagementAlertDefinition](../resources/unifiedRoleManagementAlertDefinition.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementAlert.Read.Directory, RoleManagementAlert.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagementAlert.Read.Directory, RoleManagementAlert.ReadWrite.Directory|

The calling user must be a member user or have the Privileged Role Administrator Azure AD role.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/roleManagementAlerts/alertDefinitions
```

## Optional query parameters
This method supports the `$select`, `$filter`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementalertdefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alertDefinitions
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleManagementAlertDefinition)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.unifiedRoleManagementAlertDefinition",
      "id": "0d5b2e31-dfef-d26a-b4c6-fd7a94e1ba2d",
      "displayName": "There are too many global administrators",
      "scopeType": "DirectoryRole",
      "scopeId": "67b47f38-0f0b-4e62-a3be-859140c2061f",
      "description": "The percentage of global administrators is high, relative to other privileged roles. It is recommended to use least privileged roles, with just enough privileges to perform the required tasks.",
      "severityLevel": "low",
      "securityImpact": "Global administrator is the highest privileged role. If a Global Administrator is compromised, the attacker gains access to all of their permissions, which puts your whole system at risk.",
      "mitigationSteps": "Review users and remove any that don't absolutely need the global administrator role. Assign lower privileged roles to these users instead.",
      "howToPrevent": "Assign users the least privileged role they need.",
      "isRemediatable": true,
      "isConfigurable": true
    }
  ]
}
```

