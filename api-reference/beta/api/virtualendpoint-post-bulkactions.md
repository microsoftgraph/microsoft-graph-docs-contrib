---
title: "Create cloudPcBulkAction"
description: "Create a new cloudPcBulkAction object."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apipagetype
---

# create cloudpcbulkaction
namespace: microsoft.graph

[!include [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [cloudpcbulkaction](../resources/intune-cloudpcbulkaction.md) object.

## permissions
One of the following permissions is required to call this api. to learn more, including how to choose permissions, see [permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.ReadWrite.All|

## http request

<!-- {
  "blocktype": "ignored"
}
-->
``` http
post /devicemanagement/virtualendpoint/bulkactions
```

## request headers
|name|description|
|:---|:---|
|authorization|bearer {token}. required.|
|content-type|application/json. required.|

## request body
In the request body, supply a json representation of the [cloudpcbulkaction](../resources/cloudpcbulkaction.md) object.

You can specify the following properties when creating a **cloudpcbulkaction**.

|property|type|description|
|:---|:---|:---|
|displayname|string|Name of this bulk action, required.|
|cloudpcids|guid collection|Id of cloudPcs this bulk action will apply to, required.|

## response

If successful, this method returns a `201 created` response code and a [cloudpcbulkaction](../resources/cloudpcbulkaction.md) object in the response body.

## examples

### request
The following is an example of a request.
<!-- {
  "blocktype": "request",
  "name": "create_cloudpcbulkaction_from_"
}
-->
``` http
post https://graph.microsoft.com/beta/devicemanagement/virtualendpoint/bulkactions
content-type: application/json

{
  "@odata.type": "#microsoft.graph.cloudpcbulkaction",
  "displayname": "string",
  "cloudpcids": [
    "guid"
  ],
  "actionsummary": {
    "@odata.type": "microsoft.graph.cloudpcbulkactionsummary"
  }
}
```


### response
The following is an example of the response.
>**note:** the response object shown here might be shortened for readability.
<!-- {
  "blocktype": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudpcbulkaction"
}
-->
``` http
http/1.1 201 created
content-type: application/json

{
  "@odata.type": "#microsoft.graph.cloudpcbulkaction",
  "id": "231ad98f-41b3-872b-dd37-c70bf22cbdac",
  "displayname": "string",
  "cloudpcids": [
    "guid"
  ],
  "actionsummary": {
    "@odata.type": "microsoft.graph.cloudpcbulkactionsummary"
  },
  "createddatetime": "string (timestamp)"
}
```

