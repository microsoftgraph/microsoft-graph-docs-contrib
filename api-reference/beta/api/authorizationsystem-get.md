---
title: "Get authorizationSystem"
description: "Read the properties and relationships of an authorizationSystem object."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get authorizationSystem
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the details of an [authorizationSystem](../resources/authorizationsystem.md) that you've onboarded to Microsoft Entra Permissions Management.

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
GET /external/authorizationSystems/{id}
```
## Optional query parameters

This method supports `$select` and `$expand` of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).
## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [authorizationSystem](../resources/authorizationsystem.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_authorizationsystem"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/956987887735
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authorizationSystem"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/$entity",
  "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
  "id": "OTU2OTg3ODg3NzM1",
  "authorizationSystemId": "956987887735",
  "authorizationSystemName": "development",
  "authorizationSystemType": "AWS",
  "dataCollectionInfo@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems('OTU2OTg3ODg3NzM1')/microsoft.graph.awsAuthorizationSystem/dataCollectionInfo/$entity",
  "dataCollectionInfo": {
    "entitlements": {
      "@odata.type": "microsoft.graph.noEntitlementsDataCollection"
    }
  }
}
```

