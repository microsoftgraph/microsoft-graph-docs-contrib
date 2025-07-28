---
title: "cloudPcCloudApp: retrieveDiscoveredApps"
description: "Get a list of cloudPcDiscoveredApp objects whose app details can be used to map to a cloudPcCloudApp object."
author: "niniliu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 06/12/2025
---

# cloudPcCloudApp: retrieveDiscoveredApps

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [cloudPcDiscoveredApp](../resources/cloudpcdiscoveredapp.md) objects whose app details can be used to map to a [cloudPcCloudApp](../resources/cloudpccloudapp.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpccloudapp_retrievediscoveredapps" } -->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/virtualEndpoint/cloudApps/retrieveDiscoveredApps(sourceId={value},provisioningPolicyId={value})
```

## Query parameters

In the request URL, provide the following required query parameters with values.

| Parameter     | Type   | Description                                                                                                            |
|:--------------|:-------|:-----------------------------------------------------------------------------------------------------------------------|
| sourceId | String | The guid of source id, where it represents image id. |
| provisioningPolicyId   | String | The guid if of provisioning policy Id.   |

This method also supports some of the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcDiscoveredApp](../resources/cloudpcdiscoveredapp.md) objects in the response body.

## Examples

### Request
The following example shows the request.
<!-- {
  "blockType": "request",
  "name": "get_cloudpcdiscoveredapp"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudApps/retrieveDiscoveredApps(sourceId='30d0e128-de93-41dc-89ec-33d84bb662a0',provisionPolicyId='30d0e128-de93-41dc-89ec-33d84bb662a0')
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcDiscoveredApp)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.cloudPcDiscoveredApp)",
  "value": [
    {
      "id": "9a383274-a9b3-4c5f-ac95-0ea5d54fb365",
      "appName": "Character Map",
      "properties": {
        "filePath": "C:\\Windows\\system32\\charmap.exe",
        "commandLineArguments": "",
        "iconPath": "C:\\Windows\\system32\\charmap.exe",
        "iconIndex": 0
      }
    },
    {
      "id": "ja383274-a9b3-4c5f-ac95-0ea5d54fb365",
      "appName": "Paint",
      "properties": {
        "filePath": "C:\\Windows\\system32\\mspaint.exe",
        "commandLineArguments": "",
        "iconPath": "C:\\Windows\\system32\\mspaint.exe",
        "iconIndex": 0
      }
    }
  ]
}
```
