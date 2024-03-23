---
title: "List provisioningPolicies"
description: "List the properties and relationships of the cloudPcProvisioningPolicy objects."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# List provisioningPolicies

Namespace: microsoft.graph

List properties and relationships of the [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) objects.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_list_provisioningpolicies" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-list-provisioningpolicies-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/provisioningPolicies
```

## Optional query parameters

This method supports the `$select`, `$filter`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_cloudpcprovisioningpolicies"
}
-->

``` http
GET https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/provisioningPolicies
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcProvisioningPolicy)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicy",
      "description": "Description value",
      "displayName": "Display Name value",
      "domainJoinConfigurations": [
        {
          "onPremisesConnectionId": "16ee6c71-fc10-438b-88ac-daa1ccafffff",
          "managedType": "hybridAzureADJoin"
        },
        {
          "onPremisesConnectionId": "26e16c71-f210-438b-88ac-d481ccafffff",
          "managedType": "hybridAzureADJoin"
        }
      ],
      "enableSingleSignOn": true,
      "id": "1d164206-bf41-4fd2-8424-a3192d39ffff",
      "imageDisplayName": "Image Display Name value",
      "imageId": "Image ID value",
      "imageType":"custom",
      "windowsSetting": {
          "locale": "en-US"
      },
      "managedBy": "windows365",
      "provisioningType": "dedicated"
    }
  ]
}
```
