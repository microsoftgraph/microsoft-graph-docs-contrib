---
title: "List azureAuthorizationSystemResources"
description: "List the azureAuthorizationSystemResource objects and their properties for an Azure authorization system that you've onboarded to Permissions Management."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List azureAuthorizationSystemResources
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the [azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) objects and their properties for a provided Azure authorization system.

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
GET /external/authorizationSystems/{computedId}/graph.azureAuthorizationSystem/resources
```

## Optional query parameters
This method supports the `$filter` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) objects in the response body.

## Examples

### Example 1: Get an Azure resource for a provided Azure authorization system.

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_azureauthorizationsystemresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{computedId}/graph.azureAuthorizationSystem/resources
```


### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.azureAuthorizationSystemResource)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{computedId}/resources",
  "value": [
    {
      "id": "L3N1YnNjcmlwdGlvbnMvZTE2MGIzNGItMmEwZi00MWY2LWFhZjMtMDljNWE5ZjQzNzY4L3Jlc291cmNlR3JvdXBzLzJlUmVzb3VyY2VHcm91cC9wcm92aWRlcnMvTWljcm9zb2Z0Lk5ldHdvcmsvdmlydHVhbE5ldHdvcmtzLzJlUmVzb3VyY2VHcm91cC12bmV0",
      "externalId": "/subscriptions/e160b34b-2a0f-41f6-aaf3-09c5a9f43768/resourceGroups/2eResourceGroup/providers/Microsoft.Network/virtualNetworks/2eResourceGroup-vnet",
      "displayName": "2eResourceGroup/2eResourceGroup-vnet",
      "resourceType": "virtualNetworks",
      "service": {
        "id": "Microsoft.Network"
      }
    },
    {
      "id": "L3N1YnNjcmlwdGlvbnMvZTE2MGIzNGItMmEwZi00MWY2LWFhZjMtMDljNWE5ZjQzNzY4L3Jlc291cmNlR3JvdXBzLzJlUmVzb3VyY2VHcm91cC9wcm92aWRlcnMvTWljcm9zb2Z0LlN0b3JhZ2Uvc3RvcmFnZUFjY291bnRzLzJlcmVzb3VyY2Vncm91cDkyNWM="
      "externalId": "/subscriptions/e160b34b-2a0f-41f6-aaf3-09c5a9f43768/resourceGroups/2eResourceGroup/providers/Microsoft.Storage/storageAccounts/2eresourcegroup925c",
      "displayName": "2eResourceGroup/2eresourcegroup925c",
      "resourceType": "storageAccounts",
      "service": {
        "id": "Microsoft.Storage"
      }
    }
  ]
}
```

### Example 2: List all Azure resources with entitlements for a provided Azure authorization system.

Returns collection of all azureAuthorizationSystemResource entities for a provided Azure authorization system with the list of entitlements that grant an identity access to the resource.

#### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_azureauthorizationsystemresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{computedId}/graph.azureAuthorizationSystem/resources?$expand=entitlements
```


#### Response
The following is an example of the response.
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{computedId}/microsoft.graph.azureAuthorizationSystem/resources?$expand=entitlements",
  "value": [
    {
      "@odata.type": "microsoft.graph.azureAuthorizationSystemResource"
      "id": "YXJuOmF3czpzMzo6OjAwLXNldHRpbmdzLWFsbC1icC1ub25lLWFjbC1vd25lci1lbmNyeXB0aW9uLW5vbmU=",
      "externalId": "000dbd4d-1f50-4858-816d-099987aa81ef",
      "displayName": "ck_pod_test_user_1682160068134",
      "resourceType": "roleDefinitions",
      "service": {
        "id": "Microsoft.Authorization"
      },
      "entitlements": [
        {
          "@odata.type": "microsoft.graph.azureRbacEntitlement",
          "id": "YXJuOmF3czpzMzo6OjAwLXNldHRpbmdzLWFsbC1icC1ub25lLWFjbC1vd25lci1lbmNyeXB0aW9uLW5vbmU=",
          "identity@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/all/{identityId}",
          "sourceIdentity@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/all/{sourceIdentityId}",
          "azureRoleDefinition@odata.bind": "https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.azureAuthorizationSystem/roleDefinitions/{rolePolicyId}",
          "lastUsedDateTime": "1549311775000",
        },
        ...
      ]
      "@odata.nextLink": https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.azureAuthorizationSystem/resources/{resourceId}/entitlements?$skiptoken={encodedPageTokenEntitlements}
    },
    ...
  ]
  "@odata.nextLink": https://graph.microsoft.com/beta/external/authorizationSystem/{computedId}/microsoft.graph.azureAuthorizationSystem/resources?$skiptoken={encodedPageTokenResources}&$expand=entitlements
}
```

