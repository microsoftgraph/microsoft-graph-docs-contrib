---
title: "Create industryDataRun"
description: "Create a new industryDataRun object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create industryDataRun
Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [industryDataRun](../resources/industrydata-industrydatarun.md) object.

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
POST /external/industryData/runs
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [industryDataRun](../resources/industrydata-industrydatarun.md) object.

You can specify the following properties when creating an **industryDataRun**.

|Property|Type|Description|
|:---|:---|:---|
|blockingError|[microsoft.graph.publicError](../resources/publicerror.md)|An error object to diagnose critical failures in the run. Optional.|
|displayName|String|The name of the run for rendering in a user interface. Required.|
|endDateTime|DateTimeOffset|The time the run finished in ISO 8601 format, or null if the run is still in-progress. Optional.|
|startDateTime|DateTimeOffset|The time the run started in ISO 8601 format. Required.|
|status|industryDataRunStatus|Current status of the run. The possible values are: `running`, `failed`, `completed`, `completedWithErrors`, `completedWithWarnings`, `unknownFutureValue`. Required.|



## Response

If successful, this method returns a `201 Created` response code and an [industryDataRun](../resources/industrydata-industrydatarun.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_industrydatarun_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/external/industryData/runs
Content-Type: application/json
Content-length: 281

{
  "@odata.type": "#microsoft.graph.industryData.industryDataRun",
  "blockingError": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "displayName": "String",
  "endDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)",
  "status": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.industryDataRun"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.industryDataRun",
  "blockingError": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "displayName": "String",
  "endDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)",
  "status": "String"
}
```

