---
title: "printJob: redirect"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# printJob: redirect
Namespace: microsoft.graph

**TODO: Add Description**

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
POST /printerBase/jobs/{printJobId}/redirect
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|destinationPrinterId|String|**TODO: Add Description**|
|configuration|[printJobConfiguration](../resources/printjobconfiguration.md)|**TODO: Add Description**|



## Response

If successful, this action returns a `200 OK` response code and a [printJob](../resources/printjob.md) in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "printjob_redirect"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/printerBase/jobs/{printJobId}/redirect

Content-Type: application/json
Content-length: 128

{
  "destinationPrinterId": "String",
  "configuration": {
    "@odata.type": "microsoft.graph.printJobConfiguration"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printJob"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.printJob",
    "id": "String (identifier)",
    "createdDateTime": "String (timestamp)",
    "status": {
      "@odata.type": "microsoft.graph.printJobStatus"
    },
    "createdBy": {
      "@odata.type": "microsoft.graph.userIdentity"
    },
    "configuration": {
      "@odata.type": "microsoft.graph.printJobConfiguration"
    },
    "redirectedTo": "String",
    "redirectedFrom": "String",
    "isFetchable": "Boolean"
  }
}
```

