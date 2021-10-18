---
title: "Create applicationSignInDetailedSummary"
description: "Create a new applicationSignInDetailedSummary object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create applicationSignInDetailedSummary
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new applicationSignInDetailedSummary object.

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
POST /reports/applicationSignInDetailedSummary
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md) object.

You can specify the following properties when creating an **applicationSignInDetailedSummary**.

|Property|Type|Description|
|:---|:---|:---|
|appId|String|**TODO: Add Description** Required.|
|appDisplayName|String|**TODO: Add Description** Required.|
|status|[Microsoft.AAD.Reporting.signInStatus](../resources/signinstatus.md)|**TODO: Add Description** Optional.|
|signInCount|Int64|**TODO: Add Description** Optional.|
|aggregatedEventDateTime|DateTimeOffset|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_applicationsignindetailedsummary_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/reports/applicationSignInDetailedSummary
Content-Type: application/json
Content-length: 288

{
  "@odata.type": "#Microsoft.AAD.Reporting.applicationSignInDetailedSummary",
  "appId": "String",
  "appDisplayName": "String",
  "status": {
    "@odata.type": "microsoft.graph.signInStatus"
  },
  "signInCount": "Integer",
  "aggregatedEventDateTime": "String (timestamp)"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.AAD.Reporting.applicationSignInDetailedSummary"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.AAD.Reporting.applicationSignInDetailedSummary",
  "id": "e894588d-588d-e894-8d58-94e88d5894e8",
  "appId": "String",
  "appDisplayName": "String",
  "status": {
    "@odata.type": "microsoft.graph.signInStatus"
  },
  "signInCount": "Integer",
  "aggregatedEventDateTime": "String (timestamp)"
}
```

