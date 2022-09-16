---
title: "Create cloudPcExportJob"
description: "Create a new cloudPcExportJob object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create cloudPcExportJob
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [cloudPcExportJob](../resources/cloudpcexportjob.md) object.

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
POST /deviceManagement/virtualEndpoint/reports/exportJobs
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [cloudPcExportJob](../resources/cloudpcexportjob.md) object.

You can specify the following properties when creating a **cloudPcExportJob**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|reportName|cloudPcReportName|**TODO: Add Description**. The possible values are: `remoteConnectionHistoricalReports`, `dailyAggregatedRemoteConnectionReports`, `totalAggregatedRemoteConnectionReports`, `unknownFutureValue`. Optional.|
|filter|String|**TODO: Add Description** Optional.|
|select|String collection|**TODO: Add Description** Optional.|
|format|String|**TODO: Add Description** Optional.|
|expirationDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|requestDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|exportJobStatus|cloudPcExportJobStatus|**TODO: Add Description**. The possible values are: `notStarted`, `inProgress`, `completed`, `unknownFutureValue`. Optional.|
|exportUrl|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [cloudPcExportJob](../resources/cloudpcexportjob.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_cloudpcexportjob_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/exportJobs
Content-Type: application/json
Content-length: 315

{
  "@odata.type": "#microsoft.graph.cloudPcExportJob",
  "reportName": "String",
  "filter": "String",
  "select": [
    "String"
  ],
  "format": "String",
  "expirationDateTime": "String (timestamp)",
  "requestDateTime": "String (timestamp)",
  "exportJobStatus": "String",
  "exportUrl": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcExportJob"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/octet-stream

{
  "@odata.type": "#microsoft.graph.cloudPcExportJob",
  "id": "10eefd5f-04d6-4a12-e914-a357d0e679eb",
  "reportName": "String",
  "filter": "String",
  "select": [
    "String"
  ],
  "format": "String",
  "expirationDateTime": "String (timestamp)",
  "requestDateTime": "String (timestamp)",
  "exportJobStatus": "String",
  "exportUrl": "String"
}
```

