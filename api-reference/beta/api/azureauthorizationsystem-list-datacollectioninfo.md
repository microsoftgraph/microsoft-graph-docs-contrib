---
title: "List dataCollectionInfo"
description: "Get the dataCollectionInfo resources from the dataCollectionInfo navigation property."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List dataCollectionInfo
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the dataCollectionInfo resources from the dataCollectionInfo navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{authorizationSystemId}/dataCollectionInfo
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

If successful, this method returns a `200 OK` response code and a collection of [dataCollectionInfo](../resources/datacollectioninfo.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_datacollectioninfo"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/956987887735/dataCollectionInfo
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.dataCollectionInfo)"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems?$filter=dataCollectionInfo/permissionsModificationCapability eq 'enabled' and dataCollectionInfo/entitlementsDataCollectionStatus eq 'online'",
  "value": [
    {
      "id": "{GUID}",
      "authorizationSystemId": "956987887735",
      "authorizationSystemName": "permissionsmanagementdevelopment",
      "authorizationSystemType": "aws",
      "dataCollectionInfo": {
        "entitlementsDataCollectionStatus": "online",
        "lastCollectionDateTime": "2023-02-17T21:12:48Z",
        "permissionsModificationCapability":  "enabled"
      }
    },
    {
      "id": "{GUID}",
      "authorizationSystemId": "5757f970-a701-4a2d-8cdb-97c858216084",
      "authorizationSystemName": "Microsoft Azure Sponsorship 2",
      "authorizationSystemType": "azure",
      "dataCollectionInfo": {
        "entitlementsDataCollectionStatus": "online",
        "lastCollectionDateTime": "2023-02-17T21:12:48Z",
        "permissionsModificationCapability":  "enabled"
      }
    }
  ]
}
```

