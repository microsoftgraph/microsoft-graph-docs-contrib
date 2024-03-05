---
title: "Get azureAuthorizationSystemResource"
description: "Read the properties and relationships of an azureAuthorizationSystemResource object for a provided Azure authorization system."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get azureAuthorizationSystemResource
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) object for a provided Azure authorization system.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "azureauthorizationsystemresource_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/azureauthorizationsystemresource-get-permissions.md)]

<!--
[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/resources/{resourceId}
GET /external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/resources(externalId='{externalId}')
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) object in the response body.

## Examples

### Request
The following example shows a request to get an Azure resource for a provided Azure authorization system.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_azureauthorizationsystemresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/resources/L3N1YnNjcmlwdGlvbnMvMmM0N2FiYjctYWRlNi00NzAwLTlhMTktYWM4YzE5MWEyYWI4L3Jlc291cmNlR3JvdXBzLzJlUmVzb3VyY2VHcm91cC9wcm92aWRlcnMvTWljcm9zb2Z0Lk5ldHdvcmsvdmlydHVhbE5ldHdvcmtzLzJlUmVzb3VyY2VHcm91cC12bmV0
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-azureauthorizationsystemresource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.azureAuthorizationSystemResource"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/resources",
  "value": [
    {
      "id": "L3N1YnNjcmlwdGlvbnMvMmM0N2FiYjctYWRlNi00NzAwLTlhMTktYWM4YzE5MWEyYWI4L3Jlc291cmNlR3JvdXBzLzJlUmVzb3VyY2VHcm91cC9wcm92aWRlcnMvTWljcm9zb2Z0Lk5ldHdvcmsvdmlydHVhbE5ldHdvcmtzLzJlUmVzb3VyY2VHcm91cC12bmV0",
      "externalId": "/subscriptions/2c47abb7-ade6-4700-9a19-ac8c191a2ab8/resourceGroups/2eResourceGroup/providers/Microsoft.Network/virtualNetworks/2eResourceGroup-vnet",
      "displayName": "2eResourceGroup/2eResourceGroup-vnet",
      "resourceType": "virtualNetworks",
      "service": {
        "id": "Microsoft.Network"
      }
    }
  ]
}
```

