---
title: "List targetDeviceGroups"
description: "Get a list of the targetDeviceGroup objects and their properties."
author: "SanDeo-MSFT"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# List targetDeviceGroups
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [targetDeviceGroup](../resources/targetdevicegroup.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) | Application-RemoteDesktopConfig.Read.All, Application.Read.All, Directory.Read.All, Application-RemoteDesktopConfig.ReadWrtite.All, Application.ReadWrite.All, Directory.ReadWrite.All|
|Delegated (personal Microsoft account) | Not supported.|
|Application | Application-RemoteDesktopConfig.Read.All, Application.Read.All, Directory.Read.All, Application-RemoteDesktopConfig.ReadWrtite.All, Application.ReadWrite.OwnedBy, Application.ReadWrite.All, Directory.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /servicePrincipals/{servicePrincipalsId}/remoteDesktopSecurityConfiguration/targetDeviceGroups
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

If successful, this method returns a `200 OK` response code and a collection of [targetDeviceGroup](../resources/targetdevicegroup.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_targetdevicegroup"
}
-->
``` http
GET https://graph.microsoft.com/beta/servicePrincipals/{servicePrincipalsId}/remoteDesktopSecurityConfiguration/targetDeviceGroups
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.targetDeviceGroup)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.targetDeviceGroup",
      "id": "b9e4eae4-b781-45a1-ce65-f2dd8ac3b696",
      "displayName": "String"
    }
  ]
}
```

