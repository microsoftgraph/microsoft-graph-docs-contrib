---
title: "Create comment for incident"
description: "Adds a comment to the end of the incident comments list"
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Create comment for incident
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a comment for an existing [incident](../resources/security-incident.md) based on the specified incident **id** property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|SecurityIncident.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|SecurityIncident.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/incidents/{incidentId}/comments
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, use `@odata.type` to specify the parameter type of [alertComment](../resources/security-alertcomment.md), and provide a JSON object for the parameter, `comment`. See an [example](#examples).

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|comment|String|The comment to be added.|

## Response

If successful, this method returns a `200 OK` response code and an updated list of all [alertComment](../resources/security-alertcomment.md) resources of the incident.

## Examples

### Request
The following is an example of a request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["3962396"],
  "name": "incident_addcomment"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/incidents/3962396/comments
Content-Type: application/json

{
    "@odata.type": "microsoft.graph.security.alertComment",
    "comment": "Demo for docs"
}
```

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "@odata.type": "collection(microsoft.graph.security.alertComment)",
  "truncated": true
}
-->

``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/alerts_v2('da637865765418431569_-773071023')/comments",
    "value": [
        {
            "comment": "test",
            "createdByDisplayName": "secAdmin@contoso.onmicrosoft.com",
            "createdDateTime": "2022-10-13T07:08:45.4626766Z"
        },
        {
            "comment": "Demo for docs",
            "createdByDisplayName": "secAdmin@contoso.onmicrosoft.com",
            "createdDateTime": "2022-10-13T07:08:50.5821324Z"
        }
    ]
}
```
