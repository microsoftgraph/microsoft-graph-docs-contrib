---
title: "Get azureAuthorizationSystemResource"
description: "Read the properties and relationships of an azureAuthorizationSystemResource object for a provided Azure authorization system."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get azureAuthorizationSystemResource
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) object for a provided Azure authorization system.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{computedId}/graph.azureAuthorizationSystem/resources/{resourceId}
```

## Optional query parameters
This method supports the `$expand` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) object in the response body.

## Examples

### Example 1: Get an Azure resource for a provided Azure authorization system.

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_azureauthorizationsystemresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{computedId}/graph.azureAuthorizationSystem/resources/L3N1YnNjcmlwdGlvbnMvZTE2MGIzNGItMmEwZi00MWY2
```


#### Response
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{computedId}/resources",
  "value": [
    {
      "id": "L3N1YnNjcmlwdGlvbnMvZTE2MGIzNGItMmEwZi00MWY2",
      "externalId": "/subscriptions/e160b34b-2a0f-41f6-aaf3-09c5a9f43768/resourceGroups/2eResourceGroup/providers/Microsoft.Network/virtualNetworks/2eResourceGroup-vnet",
      "displayName": "2eResourceGroup/2eResourceGroup-vnet",
      "resourceType": "virtualNetworks",
      "service": {
        "id": "Microsoft.Network"
      }
    }
  ]
}
```

### Example 2: Get entitlements for a specific Azure resource.

Returns collection of all azureRbacEntitlement objects, which represent the combination of an Azure role definition that grants an identity access to an authorized system resource, the associated identity, and an optional source identity where the assigned permission was inherited.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_azureauthorizationsystemresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{computedId}/microsoft.graph.azureAuthorizationSystem/resources/{resourceId}/entitlements
```


#### Response
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{computedId}/microsoft.graph.azureAuthorizationSystem/resources/{resourceId}/entitlements",
  "value": [
    {
      "@odata.type": "microsoft.graph.azureRbacEntitlement",
      "id": "YXJuOmF3czpzMzo6OjAwLXNldHRpbmdzLWFsbC1icC1ub25lLWFjbC1vd25lci1lbmNyeXB0aW9uLW5vbmU=",
      "identity@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/all/{identityId}",
      "sourceIdentity@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/all/{sourceIdentityId}",
      "azureRoleDefinition@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.azureAuthorizationSystem/roleDefinitions/{rolePolicyId}",
      "lastUsedDateTime": "1549311775000"
    },
    ...
  ],
  "@odata.nextLink": https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/resources/{resourceId}/microsoft.graph.azureAuthorizationSystem/entitlements?$skiptoken={encodedPageTokenEntitlements}
}
```

