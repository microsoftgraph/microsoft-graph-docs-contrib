---
title: "List unifiedRoleManagementAlertDefinition"
description: "Get the unifiedRoleManagementAlertDefinition resources from the alertDefinition navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List unifiedRoleManagementAlertDefinition
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the unifiedRoleManagementAlertDefinition resources from the alertDefinition navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/roleManagementAlerts/alerts/{unifiedRoleManagementAlertId}/alertConfiguration/alertDefinition
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementalertdefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/{unifiedRoleManagementAlertId}/alertConfiguration/alertDefinition
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
      "displayName": "String",
      "scopeType": "String",
      "scopeId": "String",
      "description": "String",
      "severityLevel": "String",
      "securityImpact": "String",
      "mitigationSteps": "String",
      "howToPrevent": "String",
      "isRemediatable": "Boolean",
      "isConfigurable": "Boolean"
    }
  ]
}
```

